local _, core = ...;
local AceGUI = LibStub("AceGUI-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local LibDBIcon = LibStub("LibDBIcon-1.0")
local addon_name = "ArenaStrategies"
local frame;
core.Config = {};
Config = core.Config;
Config.filter = {};
filter = Config.filter;
local _, player_class = UnitClass("player");
filter.bracket_filter = "2v2";
filter.player_comp = "";
filter.enemy_comp = "";
-- Function to open the minimap icon configuration
function OpenMinimapConfig()
    if frame and frame:IsShown() then
        frame:Hide();
    else
        if not frame then
            frame = CreateCustomConfigFrame();
        end
        frame:Show();
    end
end



-- Function to create the custom configuration frame
function CreateCustomConfigFrame()
    local frame_width, frame_height = 700, 300;
    local f = AceGUI:Create("Frame");

    f:SetTitle(addon_name);
    f:SetLayout("Flow");
    f:SetWidth(frame_width);
    f:SetHeight(frame_height);

    -- Arena Bracket Dropdown
    local bracket_dropdown = AceGUI:Create("Dropdown");
    bracket_dropdown:SetLabel("Bracket");
    bracket_dropdown:SetList({
        ["2v2"] = "2v2",
        ["3v3"] = "3v3",
    });
    bracket_dropdown:SetWidth(72);
    bracket_dropdown:SetCallback("OnValueChanged", function(_, _, bracket)
        filter.bracket_filter = bracket;
        UpdateClassDropdowns();
        ResetDropdowns();
    end);
    bracket_dropdown:SetValue("2v2");
    f:AddChild(bracket_dropdown);

    -- Class Combination Dropdowns
    local player_comp_dropdown = AceGUI:Create("Dropdown");
    player_comp_dropdown:SetLabel("Your Comp");
    local viablePlayerComps = core[player_class.."_COMPS"][filter.bracket_filter] or {};
    player_comp_dropdown:SetList(viablePlayerComps);
    player_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.player_comp = comp;
        UpdateSummaryAndTipText();
    end);
    player_comp_dropdown:SetWidth(220);
    f:AddChild(player_comp_dropdown);

    local vs_label = AceGUI:Create("Label")
    vs_label:SetText("vs");
    vs_label:SetWidth(20)
    f:AddChild(vs_label);

    local enemy_comp_dropdown = AceGUI:Create("Dropdown");
    enemy_comp_dropdown:SetLabel("Enemy Comp");
    enemy_comp_dropdown:SetList(core.VIABLE_COMPS[filter.bracket_filter]);
    enemy_comp_dropdown:SetCallback("OnValueChanged", function(_, _, comp)
        filter.enemy_comp = comp;
        UpdateSummaryAndTipText();
    end);
    enemy_comp_dropdown:SetWidth(220);
    f:AddChild(enemy_comp_dropdown);

    function UpdateClassDropdowns(selectedBracket)
        local classCombinations = core[player_class.."_COMPS"][filter.bracket_filter];
        local viableEnemyComps = core.VIABLE_COMPS[filter.bracket_filter];
        enemy_comp_dropdown:SetList(viableEnemyComps);
        player_comp_dropdown:SetList(classCombinations);
    end

    -- SimpleGroup for horizontal layout
    local horizontal_group = AceGUI:Create("SimpleGroup");
    horizontal_group:SetLayout("Flow");
    horizontal_group:SetWidth(frame_width - 20);
    f:AddChild(horizontal_group);

    local summary_text_label = AceGUI:Create("Label");
    horizontal_group:AddChild(summary_text_label);

    local tips_text_label = AceGUI:Create("Label");
    horizontal_group:AddChild(tips_text_label);

    function UpdateSummaryAndTipText()
        if filter.enemy_comp == "" or filter.player_comp == "" then return end
        local summary = core[player_class .. "_STRATS"][filter.bracket_filter][filter.player_comp][filter.enemy_comp].summary or "";
        local tips = core[player_class .. "_STRATS"][filter.bracket_filter][filter.player_comp][filter.enemy_comp].tips or {};
        local formattedTips = "";
        for i, tip in ipairs(tips) do
            formattedTips = formattedTips .. "Tip " .. i .. ": " .. tip .. "\n";
        end
    
        -- Check if there are any tips
        if #tips > 0 then
            formattedTips = "Tips:\n\n" .. formattedTips;
        end
    
        tips_text_label:SetText(formattedTips);
        summary_text_label:SetText((summary ~= "" and "Summary:\n\n" or "") .. summary);
    end
    function ResetDropdowns()
        player_comp_dropdown:SetValue(nil);
        enemy_comp_dropdown:SetValue(nil);
        filter.enemy_comp = "";
        filter.player_comp = "";
        tips_text_label:SetText("");
        summary_text_label:SetText("");
    end

    return f;
end

-- Register slash command to open options
SLASH_ARENASTRATS1 = "/arenastrats"
SLASH_ARENASTRATS2 = "/as"
SlashCmdList["ARENASTRATS"] = OpenMinimapConfig

-- Register Minimap Icon
LibDBIcon:Register(addon_name, {
    icon = "Interface\\Icons\\Ability_Creature_Cursed_01",
    OnClick = OpenMinimapConfig,
    OnTooltipShow = function(tt)
        tt:AddLine(addon_name);
        tt:AddLine("Click to open options");
    end,
    text = addon_name,
    iconCoords = {0.05, 0.95, 0.05, 0.95},
})