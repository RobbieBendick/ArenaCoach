local _, core = ...;

local HUNTER_STRATS = {
    ["2v2"] = {
        ["ret_hunter"] = {
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
        ['hunter_discpriest'] = {
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
        ["ret_hunter_discpriest"] = {
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

local HUNTER_COMPS = {
    ["2v2"] = {
        ["hunter_discpriest"] = "Hunter/Disc Priest",
        ["ret_hunter"] = "Hunter/Ret",
    },
    ["3v3"] = {
        ["ret_hunter_discpriest"] = "Ret/Hunter/Disc Priest"
    }
}

core.HUNTER_COMPS = HUNTER_COMPS;
core.HUNTER_STRATS = HUNTER_STRATS;
