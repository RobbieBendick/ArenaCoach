local _, core = ...;

local DEATHKNIGHT_STRATS = {
    ["2v2"] = {
        ["ret_deathknight"] = {
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
        ['deathknight_holypaladin'] = {
            ["warrior_holypaladin"] = {
                summary = "Scatter/Trap Paladin into fear while killing Warrior.",
                    tips = {
                        "Save [Snake Trap] for Warrior right before you go for a Scatter/Trap on Paladin.",
                        "When Paladin is CC'd, purge Sacred Shield off the Warrior."
                    }
            },
            ["rogue_discpriest"] = {
                summary = "Scatter/Trap Priest into fear while killing Rogue.",
                tips = {}
            },
            ["rogue_shadowpriest"] = {
                summary = "Scatter/Trap Priest into fear while killing Rogue.",
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
                summary = "asdasd",
                tips = {
                    "asdasd"
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

local DEATHKNIGHT_COMPS = {
    ["2v2"] = {
        ["ret_deathknight"] = "Ret/Deathknight",
        ["deathknight_holypaladin"] = "Deathknight/Holy Paladin",
        ["deathknight_discpriest"] = "Deathknight/Disc Priest",
    }
}

core.DEATHKNIGHT_COMPS = DEATHKNIGHT_COMPS;
core.DEATHKNIGHT_STRATS = DEATHKNIGHT_STRATS;
