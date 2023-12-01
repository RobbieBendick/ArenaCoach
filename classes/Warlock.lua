local _, core = ...;

local WARLOCK_STRATS = {
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

local WARLOCK_COMPS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = "Warlock/Ele Shaman",
        ["warlock_restosham"] = "Warlock/Resto Shaman",
    },
    ["3v3"] = {
        ["warlock_eleshaman_holypaladin"] = "Warlock/Ele Shaman/Holy Paladin",
    }
}

core.WARLOCK_COMPS = WARLOCK_COMPS;
core.WARLOCK_STRATS = WARLOCK_STRATS;
