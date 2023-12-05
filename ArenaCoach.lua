local _, core = ...;
core.AC = {};
ArenaCoach = core.Config;
AC = core.AC;
local addon_name = "ArenaCoach";
local ArenaCoach = _G.LibStub("AceAddon-3.0"):NewAddon(addon_name, "AceConsole-3.0", "AceEvent-3.0");
local LibDBIcon = LibStub("LibDBIcon-1.0");

function ArenaCoach:OnInitialize()
    self.db = _G.LibStub("AceDB-3.0"):New(addon_name.."DB", {
        profile = {
            showAllComps = false;
        },
    });
    self:InitializeMinimapIcon();
end

function ArenaCoach:InitializeMinimapIcon()
    LibDBIcon:Register(addon_name, {
        icon = "Interface\\Icons\\Ability_Creature_Cursed_01",
        OnClick = self.OpenMinimapConfig,
        OnTooltipShow = function(tt)
            tt:AddLine(addon_name);
            tt:AddLine("Click to open options");
        end,
        text = addon_name,
        iconCoords = {0.05, 0.95, 0.05, 0.95},
    });
end

