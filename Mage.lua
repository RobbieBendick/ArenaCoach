local _, core = ...;

local MAGE_STRATS = {
    ["2v2"] = {
        ["mage_shadowpriest"] = {
            ["warrior_holypaladin"] = {
                summary = "You should be aggressive and try to suffocate the Holy Paladin with CC.",
                tips = {
                    "Stay ontop of Paladin's pillar for most of the game to try to fear him off of the pillar every fear.",
                    "Fear Paladin with a Deep Freeze on Warrior so the Warrior cannot stop the incoming polymorph onto the Paladin.",
                    "While the Paladin is on DR for CC, the Mage should be applying junk buffs (rank 1 frostbolt, CoC, etc) and polymorphs on the Warrior.",
                    "Don't waste too much of your mana on damage while Paladin is on DR, unless there's a potential in killing."
                }
            },
            ["rogue_discpriest"] = {
                summary = "You should be VERY defensive. Whoever they are on should just run away until their cooldowns are down.",
                tips = {
                    "When the Rogue opens, the Shadow Priest should trinket and fear the rogue while the Mage CS/nova's the priest into a sheep. At this pont the Mage can deep freeze the Rogue's trinket on the fear.",
                    "Try not to disperse while stunned, you need it to run away!",
                }
            },
            ["rogue_shadowpriest"] = {
                summary = "You should be VERY defensive. Whoever they are on should just run away until their cooldowns are down.",
                tips = {
                    "When the Rogue opens, the Shadow Priest should trinket and fear the rogue while the Mage CS/nova's the priest into a sheep. At this pont the Mage can deep freeze the Rogue's trinket on the fear.",
                    "Try not to disperse while stunned, you need it to run away!",
                }
            },
            ["ret_restoshaman"] = {
                summary = "Play ontop of the Shaman so double fears are easy to land. Once doubled feared, dot the Ret while he's feared and sheep Shaman off of the fear, and silence (and/or) horrify the ret paladin while killing him.",
                tips = {
                    "Cross CC is key! Try not to waste CC until both of the enemy players are able to be CC'd at the same time."
                }
            },
            ["ret_discpriest"] = {
                summary = "Play ontop of the Priest so double fears are easy to land. Once doubled feared, dot the Ret while he's feared and sheep the Priest off of the fear, and silence (and/or) horrify the ret paladin while killing him.",
                tips = {
                    "Cross CC is key! Try not to waste CC until both of the enemy players are able to be CC'd at the same time."
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
                    "While the Priest goes into range of the enemy Mage to purge, work together to stop the sheeps!",
                    "As the Mage, if you counterspell the enemy mage's polymorph, then you should run towards the priest to deep/sheep him during the Mage's lockout.",
                }
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {},
            },
        },
        ["mage_discpriest"] = {
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
        ["mage_rogue"] = {
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

local MAGE_COMPS = {
    ["2v2"] = {
        ["mage_discpriest"] = "Mage/Disc Priest",
        ["mage_shadowpriest"] = "Mage/Shadow Priest",
        ["mage_rogue"] = "Mage/Rogue",
    },
    ["3v3"] = {
        ["mage_shadowpriest_restoshaman"] = "Mage/Shadow Priest/Resto Shaman"
    }
};


core.MAGE_STRATS = MAGE_STRATS;
core.MAGE_COMPS = MAGE_COMPS;