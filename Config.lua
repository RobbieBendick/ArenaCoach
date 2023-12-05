local _, core = ...;
local AceGUI = LibStub("AceGUI-3.0");
local AceConfig = LibStub("AceConfig-3.0");
local AceConfigDialog = LibStub("AceConfigDialog-3.0");
local LibDBIcon = LibStub("LibDBIcon-1.0");
local addon_name = "ArenaCoach";
local ArenaCoach = _G.LibStub("AceAddon-3.0"):GetAddon(addon_name);
local frame;
ArenaCoach.filter = {};
local filter = ArenaCoach.filter;
filter.bracket = "2v2";
filter.player_comp = "";
filter.enemy_comp = "";
local _, player_class = UnitClass("player");


function ArenaCoach:CreateCustomConfigFrame()

    local frame_width, frame_height = 900, 420;
    local f = AceGUI:Create("Frame", "ArenaCoachGUI");


    f:SetTitle(addon_name);
    f:SetLayout("Flow");
    f:SetWidth(frame_width);
    f:SetHeight(frame_height);

    local bracket_dropdown = AceGUI:Create("Dropdown");
    bracket_dropdown:SetLabel("Bracket");
    bracket_dropdown:SetList({
        ["2v2"] = "2v2",
        ["3v3"] = "3v3",
    });
    bracket_dropdown:SetWidth(72);
    bracket_dropdown:SetCallback("OnValueChanged", function(_, _, bracket)
        filter.bracket = bracket;
        self:UpdatePlayerClassDropdowns();
        self:ResetDropdowns();
    end);
    bracket_dropdown:SetValue("2v2");
    f:AddChild(bracket_dropdown);


    local all_comps_allowed_button = AceGUI:Create("CheckBox");
    all_comps_allowed_button:SetLabel("Show All Comps");
    all_comps_allowed_button:SetCallback("OnValueChanged", function (_, _, canViewAllComps)
        self.db.profile.showAllComps = canViewAllComps;
        self:UpdatePlayerComps();
    end);
    all_comps_allowed_button:SetValue(self.db.profile.showAllComps);
    f:AddChild(all_comps_allowed_button);


    local player_comp_dropdown = AceGUI:Create("Dropdown");
    player_comp_dropdown:SetLabel("Your Comp");
    local viable_player_comps = core[player_class.."_COMPS"][filter.bracket] or {};
    local all_player_comps = core.VIABLE_COMPS[filter.bracket];
    player_comp_dropdown:SetList(self.db.profile.showAllComps and all_player_comps or viable_player_comps);
    player_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.player_comp = comp;
        self:UpdateSummaryAndTipText();
    end);
    player_comp_dropdown:SetWidth(220);
    f:AddChild(player_comp_dropdown);

    local vs_label = AceGUI:Create("Label");
    vs_label:SetText("vs");
    vs_label:SetWidth(40);
    vs_label:SetJustifyH("CENTER");
    f:AddChild(vs_label);

    local enemy_comp_dropdown = AceGUI:Create("Dropdown");
    enemy_comp_dropdown:SetLabel("Enemy Comp");
    enemy_comp_dropdown:SetList(core.VIABLE_COMPS[filter.bracket] or {});
    enemy_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.enemy_comp = comp;
        self:UpdateSummaryAndTipText();
    end)
    enemy_comp_dropdown:SetWidth(220)
    f:AddChild(enemy_comp_dropdown)
    function ArenaCoach:UpdatePlayerClassDropdowns()
        local player_class_combinations = core[player_class.."_COMPS"][filter.bracket];
        local viable_enemy_comps = core.VIABLE_COMPS[filter.bracket];
        
        player_comp_dropdown:SetList(player_class_combinations);
        enemy_comp_dropdown:SetList(viable_enemy_comps);
    end

    -- horizontal layout
    local horizontal_group = AceGUI:Create("SimpleGroup");
    horizontal_group:SetLayout("Flow");
    horizontal_group:SetWidth(frame_width - 20);

    local summary_text_label = AceGUI:Create("Label");
    summary_text_label:SetText("");
    horizontal_group:AddChild(summary_text_label);

    local tips_text_label = AceGUI:Create("Label");
    horizontal_group:AddChild(tips_text_label);
    f:AddChild(horizontal_group);

    function ArenaCoach:UpdateSummaryAndTipText()
        if filter.player_comp == "" or filter.enemy_comp == "" then return end
        
        local summary = core[not self.db.profile.showAllComps and player_class.."_STRATS" or "ALL_STRATS"][filter.bracket][filter.player_comp][filter.enemy_comp].summary or "";
        local tips = core[not self.db.profile.showAllComps and player_class.."_STRATS" or "ALL_STRATS"][filter.bracket][filter.player_comp][filter.enemy_comp].tips or {};
        local formatted_tips = "";
        local colored_tips_title, colored_summary_title = "|cff33ff99Tips|r\n\n", "|cff33ff99Summary|r\n\n";
        for i, tip in ipairs(tips) do
            formatted_tips = formatted_tips .. "Tip " .. i .. ": " .. tip .. "\n\n";
        end
    
        if #tips > 0 then
            formatted_tips = colored_tips_title .. formatted_tips;
        else
            formatted_tips = colored_tips_title .. "Tips not yet provided.";
        end
    
        tips_text_label:SetText(formatted_tips);
        summary_text_label:SetText((summary ~= "" and "|cff33ff99Summary|r\n\n" or colored_summary_title .. "Summary not yet provided.") .. summary);
    end

    function ArenaCoach:UpdatePlayerComps()
        player_comp_dropdown:SetList(self.db.profile.showAllComps and all_player_comps or viable_player_comps);
    end

    function ArenaCoach:ResetDropdowns()
        player_comp_dropdown:SetValue(nil);
        enemy_comp_dropdown:SetValue(nil);
        filter.enemy_comp = "";
        filter.player_comp = "";
        tips_text_label:SetText("");
        summary_text_label:SetText("");
    end

    return f;
end


function ArenaCoach:PopulateKnownUnfilledStrats()
    for i, class in ipairs(core.CLASSES) do
        local class_strats = core[class.."_STRATS"];

        if not class_strats then
            break;
        end

        local other_classes = {unpack(core.CLASSES)};
        table.remove(other_classes, i);

        for _, other_class in ipairs(other_classes) do
            local other_class_strats = core[other_class.."_STRATS"];

            if not other_class_strats then
                break;
            end

            for bracket, player_comp_list in pairs(other_class_strats) do
                for player_comp, enemy_comp_data in pairs(player_comp_list) do
                    -- check if the player comp exists in the class strat
                    if class_strats[bracket] and class_strats[bracket][player_comp] then

                        -- loop through the matchups in that comp
                        for enemy_comp, other_strat in pairs(enemy_comp_data) do 
                            local current_comp_strat = class_strats[bracket][player_comp][enemy_comp];
                            
                            if current_comp_strat then
                                -- check the strat to see how many tips and summaries there are
                                if #other_strat.tips > #current_comp_strat.tips or (current_comp_strat.summary == "" and other_strat.summary ~= "") then
                                    -- override current strat for this particular matchup
                                    current_comp_strat.summary = other_strat.summary;
                                    current_comp_strat.tips = other_strat.tips;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function ArenaCoach:PopulateAllStrats()
    for i, class in ipairs(core.CLASSES) do
        local class_strats = core[class.."_STRATS"];

        for bracket, player_comp_list in pairs(class_strats) do
            for player_comp, enemy_comp_data in pairs(player_comp_list) do
                if class_strats[bracket] and class_strats[bracket][player_comp] then
                    
                    -- loop through the matchups in that comp
                    for enemy_comp, strat in pairs(enemy_comp_data) do 

                        if  core.ALL_STRATS[bracket] and core.ALL_STRATS[bracket][player_comp] and core.ALL_STRATS[bracket][player_comp][enemy_comp] then
                            local all_classes_strat = core.ALL_STRATS[bracket][player_comp][enemy_comp];

                            -- check the strat to see how many tips and summaries there are
                            if #strat.tips > #all_classes_strat.tips or (all_classes_strat.summary == "" and strat.summary ~= "") then
                                -- override current strat for this particular matchup
                                all_classes_strat.summary = strat.summary;
                                all_classes_strat.tips = strat.tips;
                            end
                        else 
                            -- create the nested tables if they don't exist
                            core.ALL_STRATS[bracket] = core.ALL_STRATS[bracket] or {};
                            core.ALL_STRATS[bracket][player_comp] = core.ALL_STRATS[bracket][player_comp] or {};
                            core.ALL_STRATS[bracket][player_comp][enemy_comp] = core.ALL_STRATS[bracket][player_comp][enemy_comp] or {};
                            
                            -- assign the values to the new table
                            core.ALL_STRATS[bracket][player_comp][enemy_comp].summary = strat.summary;
                            core.ALL_STRATS[bracket][player_comp][enemy_comp].tips = strat.tips;
                        end
                    end
                end
            end
        end
    end
end


function ArenaCoach:OpenMinimapConfig()
    ArenaCoach:PopulateKnownUnfilledStrats();
    ArenaCoach:PopulateAllStrats();

    if frame and frame:IsShown() then
        frame:Hide();
    else
        if not frame then
            frame = ArenaCoach:CreateCustomConfigFrame();
        end
        frame:Show();
    end
end


-- register slash command to open options
SLASH_ARENACOACH1 = "/arenacoach";
SLASH_ARENACOACH2 = "/ac";
SlashCmdList["ARENACOACH"] = ArenaCoach.OpenMinimapConfig;