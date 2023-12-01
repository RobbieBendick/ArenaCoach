local _, core = ...;

local SHAMAN_STRATS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_hunter"] = {
                summary = "",
                tips = {}
            },
            ["ret_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["feral_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_deathknight"] = {
                summary = "",
                tips = {}
            },
            ["hunter_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["mage_shadowpriest"] = {
                summary = "",
                tips = {}
            }
        },
        ['warlock_restosham'] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["rogue_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_hunter"] = {
                summary = "",
                tips = {}
            },
            ["ret_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["feral_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_deathknight"] = {
                summary = "",
                tips = {}
            },
            ["hunter_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["mage_shadowpriest"] = {
                summary = "",
                tips = {}
            }
        }
    }
}; 

local SHAMAN_COMPS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = "Warlock/Ele Shaman",
        ["warlock_restosham"] = "Warlock/Resto Shaman",
        ["eleshaman_holypaladin"] = "Ele Shaman/Holy Paladin",
        ["enhanceshaman_hunter"] = "Enhance Shaman/Hunter",
        ["enhanceshaman_ret"] = "Enhance Shaman/Ret",

    },
    ["3v3"] = {
        ["warlock_eleshaman_holypaladin"] = "Warlock/Ele Shaman/Holy Paladin",
        ["warrior_eleshaman_holypaladin"] = "Warrior/Ele Shaman/Holy Paladin",
        ["mage_shadowpriest_restoshaman"] = "Mage/Shadow Priest/Resto Shaman",
    }
}

core.SHAMAN_COMPS = SHAMAN_COMPS;
core.SHAMAN_STRATS = SHAMAN_STRATS;
