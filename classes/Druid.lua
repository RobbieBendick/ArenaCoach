local _, core = ...;

local DRUID_STRATS = {
    ["2v2"] = {
        ["feral_discpriest"] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_discpriest"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {
                }
            },
            ["ret_restoshaman"] = {
                summary = "",
                tips = {
                }
            },
            ["ret_discpriest"] = {
                summary = "",
                tips = {
                }
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
                summary = "Spam purge and kill the mage while CCing the priest.",
                tips = {
                }
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {},
            },
        },
        ["druid_restoshaman"] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {    
                }
            },
            ["rogue_discpriest"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {
                }
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
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {},
            },
        },
        ["feral_rogue"] = {
            ["warrior_holypaladin"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_discpriest"] = {
                summary = "",
                tips = {
                }
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {
                }
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
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {},
            },
        },
    };
};

local DRUID_COMPS = {
    ["2v2"] = {
        ["feral_rogue"] = "Feral/Rogue",
        ["balance_rogue"] = "Balance/Rogue"
    },
    ["3v3"] = {
        ["feral_hunter_discpriest"] = "Feral/Hunter/Disc Priest"
    }
};


core.DRUID_STRATS = DRUID_STRATS;
core.DRUID_COMPS = DRUID_COMPS;