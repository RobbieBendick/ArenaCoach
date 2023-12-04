local _, core = ...;

local CLASSES = {
    "DEATHKNIGHT", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR"
}
local VIABLE_COMPS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = "Warrior/Holy Paladin",
        ["mage_shadowpriest"] = "Mage/Shadow Priest",
        ["feral_discpriest"] = "Feral/Disc Priest",
        ["mage_rogue"] = "Mage/Rogue",
        ["ret_deathknight"] = "Ret/Death Knight",
        ["ret_hunter"] = "Ret/Hunter",
        ["ret_discpriest"] = "Ret/Disc Priest",
        ["hunter_discpriest"] = "Hunter/Disc Priest",
        ["rogue_discpriest"] = "Rogue/Disc Priest",
        ["rogue_shadowpriest"] = "Rogue/Shadow Priest",
        ["deathknight_holypaladin"] = "Deathknight/Holy Paladin",
        ["warlock_eleshaman"] = "Warlock/Ele Shaman",
        ["warlock_restoshaman"] = "Warlock/Resto Shaman",
        ["eleshaman_holypaladin"] = "Ele Shaman/Holy Paladin",
        ["enhanceshaman_hunter"] = "Enhance Shaman/Hunter",
        ["enhanceshaman_ret"] = "Enhance Shaman/Ret",
    },
    ["3v3"] = {
        ["rogue_mage_discpriest"] = "Rogue/Mage/Disc Priest",
        ["ret_hunter_discpriest"] = "Ret/Hunter/Disc Priest",
        ["mage_shadowpriest_restoshaman"] = "Mage/Shadow Priest/Resto Shaman",
        ["feral_hunter_discpriest"] = "Feral/Hunter/Disc Priest",
        ["warrior_eleshaman_holypaladin"] = "Warrior/Ele Shaman/Holy Paladin",
        ["warlock_eleshaman_holypaladin"] = "Warlock/Ele Shaman/Holy Paladin",
    }
};

core.VIABLE_COMPS = VIABLE_COMPS;
core.CLASSES = CLASSES;