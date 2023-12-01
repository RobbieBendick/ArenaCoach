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
        ["deathknight_holypaladin"] = "Deathknight/Holy Paladin"
    },
    ["3v3"] = {
        ["rogue_mage_discpriest"] = "Rogue/Mage/Disc Priest",
        ["ret_hunter_discpriest"] = "Ret/Hunter/Disc Priest",
        ["mage_shadowpriest_restoshaman"] = "Mage/Shadow Priest/Resto Shaman",
        ["feral_hunter_discpriest"] = "Feral/Hunter/Disc Priest"
    }
};

core.VIABLE_COMPS = VIABLE_COMPS;