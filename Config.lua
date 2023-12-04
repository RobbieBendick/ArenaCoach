local _, core = ...;
local AceGUI = LibStub("AceGUI-3.0");
local AceConfig = LibStub("AceConfig-3.0");
local AceConfigDialog = LibStub("AceConfigDialog-3.0");
local LibDBIcon = LibStub("LibDBIcon-1.0");
local addon_name = "ArenaCoach";
local frame;
AC = core.AC;
core.Config = {};
Config = core.Config;
Config.filter = {};
filter = Config.filter;
filter.bracket = "2v2";
filter.player_comp = "";
filter.enemy_comp = "";
local _, player_class = UnitClass("player");
local addon_name = "ArenaCoach";

function Config:OpenMinimapConfig()
    if frame and frame:IsShown() then
        frame:Hide();
    else
        if not frame then
            frame = Config:CreateCustomConfigFrame();
        end
        frame:Show();
    end
end

function Config:CreateCustomConfigFrame()
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
        Config:UpdatePlayerClassDropdowns();
        Config:ResetDropdowns();
    end);
    bracket_dropdown:SetValue("2v2");
    f:AddChild(bracket_dropdown);

    local player_comp_dropdown = AceGUI:Create("Dropdown");
    player_comp_dropdown:SetLabel("Your Comp");
    local viable_player_comps = core[player_class.."_COMPS"][filter.bracket] or {};
    player_comp_dropdown:SetList(viable_player_comps);
    player_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.player_comp = comp;
        Config:UpdateSummaryAndTipText();
    end);
    player_comp_dropdown:SetWidth(220);
    f:AddChild(player_comp_dropdown);

    local vs_label = AceGUI:Create("Label")
    vs_label:SetText("vs");
    vs_label:SetWidth(40);
    vs_label:SetJustifyH("CENTER");
    f:AddChild(vs_label);

    local enemy_comp_dropdown = AceGUI:Create("Dropdown");
    enemy_comp_dropdown:SetLabel("Enemy Comp");
    enemy_comp_dropdown:SetList(core.VIABLE_COMPS[filter.bracket]);
    enemy_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.enemy_comp = comp;
        Config:UpdateSummaryAndTipText();
    end);
    enemy_comp_dropdown:SetWidth(220);
    f:AddChild(enemy_comp_dropdown);

    function Config:UpdatePlayerClassDropdowns()
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

    function Config:UpdateSummaryAndTipText()
        if filter.player_comp == "" or filter.enemy_comp == "" then return end
        local summary = core[player_class .. "_STRATS"][filter.bracket][filter.player_comp][filter.enemy_comp].summary or "";
        local tips = core[player_class .. "_STRATS"][filter.bracket][filter.player_comp][filter.enemy_comp].tips or {};
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

    function Config:ResetDropdowns()
        player_comp_dropdown:SetValue(nil);
        enemy_comp_dropdown:SetValue(nil);
        filter.enemy_comp = "";
        filter.player_comp = "";
        tips_text_label:SetText("");
        summary_text_label:SetText("");
    end

    return f;
end


function Config:PopulateKnownUnfilledStrats()
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

            for bracket, player_comps in pairs(other_class_strats) do
                for player_comp, enemy_comp_data in pairs(player_comps) do
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


-- register slash command to open options
SLASH_ARENACOACH1 = "/arenacoach";
SLASH_ARENACOACH2 = "/ac";
SlashCmdList["ARENACOACH"] = Config.OpenMinimapConfig;