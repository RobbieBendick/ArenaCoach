local _, core = ...;

local WARRIOR_STRATS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = {
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
        ['warrior_discpriest'] = {
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
                tips = {
                }
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

local WARRIOR_COMPS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = "Warrior/Holy Paladin",
        ["warrior_discpriest"] = "Warrior/Disc Priest",
    },
    ["3v3"] = {
        ["warrior_eleshaman_holypaladin"] = "Warrior/Ele Shaman/Holy Paladin",
        ["warrior_deathknight_holypaladin"] = "Warrior/Deathknight/Holy Paladin"
    }
}

core.WARRIOR_COMPS = WARRIOR_COMPS;
core.WARRIOR_STRATS = WARRIOR_STRATS;
