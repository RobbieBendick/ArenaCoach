local ArenaCoach, core = ...;
core.AC = {};
Config = core.Config;
AC = core.AC;
local addon_name = "ArenaCoach";
local ArenaStats = _G.LibStub("AceAddon-3.0"):NewAddon(addon_name,
                                                       "AceConsole-3.0",
                                                       "AceEvent-3.0");

local LibDBIcon = LibStub("LibDBIcon-1.0")

function AC:OnInitialize()
    self.db = _G.LibStub("AceDB-3.0"):New(addon_name, {
        profile = {
            minimapButton = {hide = false},
        },
    })
    self:DrawMinimapIcon()
end

function AC:DrawMinimapIcon()
    -- Register minimap icon
    LibDBIcon:Register(addon_name, {
        icon = "Interface\\Icons\\Ability_Creature_Cursed_01",
        OnClick = core.Config.OpenMinimapConfig,
        OnTooltipShow = function(tt)
            tt:AddLine(addon_name);
            tt:AddLine("Click to open options");
        end,
        text = addon_name,
        iconCoords = {0.05, 0.95, 0.05, 0.95},
    })
end
AC:OnInitialize();

