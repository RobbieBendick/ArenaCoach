local _, core = ...;

local WARLOCK_STRATS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["mage_shadowpriest"] = {
                summary = "",
                tips = {}
            },
            ["feral_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["ret_deathknight"] = {
                summary = "",
                tips = {}
            },
            ["ret_hunter"] = {
                summary = "",
                tips = {}
            },
            ["hunter_discpriest"] = {
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
            ["deathknight_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["warlock_eleshaman"] = {
                summary = "",
                tips = {}
            },
            ["warlock_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["eleshaman_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["enhanceshaman_hunter"] = {
                summary = "",
                tips = {}
            },
            ["enhanceshaman_ret"] = {
                summary = "",
                tips = {}
            }
        },
        ['warlock_restosham'] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["mage_shadowpriest"] = {
                summary = "",
                tips = {}
            },
            ["feral_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["ret_deathknight"] = {
                summary = "",
                tips = {}
            },
            ["ret_hunter"] = {
                summary = "",
                tips = {}
            },
            ["hunter_discpriest"] = {
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
            ["deathknight_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["warlock_eleshaman"] = {
                summary = "",
                tips = {}
            },
            ["warlock_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["eleshaman_holypaladin"] = {
                summary = "",
                tips = {}
            },
            ["enhanceshaman_hunter"] = {
                summary = "",
                tips = {}
            },
            ["enhanceshaman_ret"] = {
                summary = "",
                tips = {}
            }
        }
    },
    ["3v3"] = {
        ["warlock_eleshaman_holypaladin"] = {
            ["rogue_mage_discpriest"] = {
                summary = "",
                tips = {}
            },
            ["ret_hunter_discpriest"] = { 
                summary = "",
                tips = {}
            },
            ["mage_shadowpriest_restoshaman"] = { 
                summary = "",
                tips = {}
            },
            ["feral_hunter_discpriest"] = { 
                summary = "",
                tips = {}
            },
            ["warrior_eleshaman_holypaladin"] = { 
                summary = "",
                tips = {}
            },
            ["warlock_eleshaman_holypaladin"] = { 
                summary = "",
                tips = {}
            },
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
