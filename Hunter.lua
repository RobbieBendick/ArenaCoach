local _, core = ...;

local HUNTER_STRATS = {
    ["2v2"] = {
        ["ret_hunter"] = {
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
        ['hunter_discpriest'] = {
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

local HUNTER_COMPS = {
    ["2v2"] = {
        ["hunter_discpriest"] = "Hunter/Disc Priest",
        ["ret_hunter"] = "Hunter/Ret",
    }
}

core.HUNTER_COMPS = HUNTER_COMPS;
core.HUNTER_STRATS = HUNTER_STRATS;
