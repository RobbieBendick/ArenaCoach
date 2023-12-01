local _, core = ...;

local VIABLE_COMPS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = "Warrior/Holy Paladin",
        ["ret_deathknight"] = "Ret/Death Knight",
        ["mage_shadowpriest"] = "Mage/Shadow Priest",
        ["feral_discpriest"] = "Feral/Disc Priest",
        ["mage_rogue"] = "Mage/Rogue",
        ["ret_discpriest"] = "Ret/Disc Priest",
        ["ret_restoshaman"] = "Ret/Resto Shaman",
        ["rogue_discpriest"] = "Rogue/Disc Priest",
        ["rogue_shadowpriest"] = "Rogue/Shadow Priest",
        ["ret_discpriest"] = "Ret/Disc Priest",
        ["deathknight_holypaladin"] = "Deathknight/Holy Paladin",
        ["warlock_eleshaman"] = "Warlock/Ele Shaman",
        ["warlock_restosham"] = "Warlock/Resto Shaman",
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