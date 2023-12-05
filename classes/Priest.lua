local _, core = ...;

local PRIEST_STRATS = {
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
            ["mage_shadowpriest"] = {
                summary = "Spam purge and kill the mage while CCing the priest.",
                tips = {
                        "While the Priest goes into range of the enemy Mage to purge, work together to stop the sheeps! (Communicate who has the next Death/Counterspell etc.)",
                        "As the Mage, if you counterspell the enemy mage's polymorph, then you should run towards the priest to deep/sheep him during the Mage's lockout.",
                        "Silence the Mage while trying to sheep the Priest."
                    }
            },
            ["feral_discpriest"] = {
                summary = "CC Disc and kill Feral.",
                tips = {
                    "Play really defensive vs Berserk.",
                    "If the Feral is on the Mage, then the Shadow Priest will have to start the CC chain with a fear",
                    "If the Feral is on the Shadow Priest, the Mage can CS/Nova and sheep the Priest multiple times while the Shadow Priest runs over to fear off of it."
                }
            },
            ["mage_rogue"] = {
                summary = "Kill the Rouge usually.",
                tips = {
                    "Save disarm or disperse for Shadow Dance!",
                    "Instantly trinket the cheap shot and fear the Rogue, and deep freeze him if he trinkets. (Optional Opener)",
                    "They'll usually want to kill the Shadow Priest.",
                },
            },
            ["ret_deathknight"] = {
                summary = "Shadow Priest should play behind the Mage, so the Mage can CC them as they come in, and prolong them from hitting the Priest.",
                tips = {
                    "Work together to kill Tremor Totem and fear Shaman.",
                    "Whoever they're on needs to play extremely defensive, which involves running away and staying as far away from them as possible at all times.",
                    "If they decide to commit to the Mage, the Priest needs to come out from hiding.",
                }
            },
            ["ret_hunter"] = {
                summary = "CC Ret and kill hunter.",
                tips = {
                    "They usually want to kill the Mage in this matchup.",
                    "Use deep freeze and disarm on hunter while the ret is CC'd",
                }
            },
            ["hunter_discpriest"] = {
                summary = "CC Priest and kill hunter.",
                tips = {
                    "Either fear or CS/Nova into sheep to start the CC chain onto the Priest."
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
                    "When the Rogue opens, the Shadow Priest should trinket and fear the rogue while the Mage CS/nova's the priest into a sheep. At this point the Mage can deep freeze the Rogue's trinket on the fear.",
                    "Try not to disperse while stunned, you need it to run away!",
                }
            },
            ["ret_discpriest"] = {
                summary = "asdsad",
                tips = {"sdasd"},
            },
            ["deathknight_holypaladin"] = {
                summary = "Fear Paladin and Nova or Sheep DK, and dot Paladin up in the fear.",
                tips = {
                    "Deep freeze Paladin before he gets out of fear",
                    "Play very defensive during gargoyle.",
                }
            },
            ["warlock_eleshaman"] = {
                summary = "Fear Shaman and dot him in the fear while you sheep the Warlock",
                tips = {
                    "If the Warlock has a Felhunter, then before sheeping the Warlock, cast a rank one Frostbolt and/or Cone of Cold for the junk buffs"
                }
            },
            ["warlock_restoshaman"] = {
                summary = "Fear Shaman and dot him in the fear while you sheep the Warlock",
                tips = {
                    "Deep freeze the Shaman before he comes out of fear.",
                    "If the Warlock has a Felhunter, cast a rank one Frostbolt and/or Cone of Cold for the junk buffs before you sheep.",
                }
            },
            ["enhanceshaman_hunter"] = {
                summary = "Shadow Priest should play behind the Mage, so the Mage can CC them as they come in, and prolong them from hitting the Priest.",
                tips = {
                    "Work together to kill Tremor Totem and fear Shaman.",
                    "Whoever they're on needs to play extremely defensive, which involves running away and staying as far away from them as possible at all times."
                }
            },
            ["enhanceshaman_ret"] = {
                summary = "Shadow Priest should play behind the Mage, so the Mage can CC them as they come in, and prolong them from hitting the Priest.",
                tips = {
                    "Work together to kill Tremor Totem and fear Shaman.",
                    "Whoever they're on needs to play extremely defensive, which involves running away and staying as far away from them as possible at all times."
                }
            },
            ['eleshaman_holypaladin'] = {
                summary = "Fear Ele and dot him in the fear, while the Mage Nova/CS's Pally into a Sheep. Try to Deep Freeze ele before he gets out of the fear.",
                tips = {
                    "Cross CC is key or else they can get eachother out of CC. Be ontop of the shaman, but let the Mage Nova/CS before you fear. (Make sure to kill Tremor!)",
                }
            }
        },
        ["mage_discpriest"] = {
            ["warrior_holypaladin"] = {
                summary = "CC Paladin & kill Warrior.",
                tips = {
                    "If they survive offensive push and they're on DR, Mage will have to peel Warrior with rank one frostbolts and CoC while Priest runs around a pillar away from the Warrior."
                }
            },
            ["mage_shadowpriest"] = {
                summary = "CC Priest & purge/kill Mage.",
                tips = {}
            },
            ["feral_discpriest"] = {
                summary = "CC Priest & purge/kill Feral.",
                tips = {
                    "Nova/CS Priest into Sheep",
                    "Save Deep Freeze for Feral",
                }
            },
            ["mage_rogue"] = {
                summary = "",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "Double fear, purge Ret & rank one Frostbolt and then Sheep the Priest early in the fear, then go to the Paladin to cast damage on him before he gets out of the Fear, and then counterspell him to prolong the dispel on the Priest's sheep.",
                tips = {
                    "After purging Ret in the fear, the Priest should participate in the killing of the Ret by casting damage aswell."
                }
            },
            ["ret_restoshaman"] = {
                summary = "Double fear, purge Sacred Shield off Shaman while the mage Sheeps the Paladin off the fear and Deep Freezes the Shaman before he comes out of the Fear, and both casters should be casting damage on the Shaman.",
                tips = {
                    "Cross CC is key or else they can get eachother out of CC and ruin the whole setup."
                }
            },
            ["ret_deathknight"] = {
                summary = "Double fear to get Ret off the pillar, purge and kill Ret with sheep and/or nova on DK.",
                tips = {
                    "Running into fear is dangerous, but necessary. Get out of there ASAP after fearing!"
                }
            },
            ["ret_hunter"] = {
                summary = "CC Ret & kill hunter",
                tips = {
                    "Line of sight Aimed Shot as much as possible when Ret is out of CC.",
                    "Blink to eat Priest's trap as long as it's not putting you in the middle of the map without Ice Block.",
                }
            },
            ["hunter_discpriest"] = {
                summary = "CC Priest & purge and kill hunter.",
                tips = {}
            },
            ["rogue_discpriest"] = {
                summary = "CC Priest & purge/dot and kill rogue.",
                tips = {}
            },
            ["rogue_shadowpriest"] = {
                summary = "",
                tips = {}
            },
            ["deathknight_holypaladin"] = {
                summary = "Fear Paladin & Sheep DK. Mana Burn & Deep Freeze the Paladin, into a Counterspell and Nova to keep him in place for burns.",
                tips = {
                    "After your offensive push on Paladin, run away from the dk while the mage slows him and wait for your fear cooldown as well as the enemy DR's; Then do the Summary again.",
                    "Purge divine plea if possible.",
                }
            },
            ["warlock_eleshaman"] = {
                summary = "If warlock has a felhunter then rank one frostbolt the Warlock before sheeping Warlock, Fear Ele & dot him, and kill Ele with a deep freeze.",
                tips = {
                    "If possible, save counterspell for an important fear or shaman's heal.",
                }
            },
            ["warlock_restoshaman"] = {
                summary = "",
                tips = {}
            },
            ["eleshaman_holypaladin"] = {
                summary = "Nova/CS the Paladin into a Sheep while you fear the Shaman. Purge & Kill Shaman, and Deep Freeze him off of the fear.",
                tips = {
                    "Cross CC is key or else they can get eachother out of CC. Be ontop of the shaman, but let the Mage Nova/CS before you fear. (Make sure to kill Tremor!)",
                }
            },
            ["enhanceshaman_hunter"] = {
                summary = "CC Shaman & kill hunter",
                tips = {
                    "As they're running in, Icy veins and counterspell the Shaman, and try to get a sheep on the Shaman.",
                    "Use Deep Freezes on hun"
                }
            },
            ["enhanceshaman_ret"] = {
                summary = "Try to live the opener. Spam Sheep Ret and fear Shaman, they'll probably trinket or bubble and go all in.",
                tips = {
                    "Eventually after living their cooldowns, you can Sheep the paladin and fear the Shaman and kill the Shaman in a Deep Freeze"
                }
            }
        },
        ["rogue_discpriest"] = {
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
        ["rogue_shadowpriest"] = {
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
        ["hunter_discpriest"] = {
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
                summary = "CC Priest & purge kill Rogue.",
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
        ["feral_discpriest"] = {
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
        ["deathknight_discpriest"] = {
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
        ["ret_discpriest"] = {
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
        ["mage_shadowpriest_restoshaman"] = {
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
        },
        ["rogue_mage_discpriest"] = {
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

local PRIEST_COMPS = {
    ["2v2"] = {
        ["mage_discpriest"] = "Mage/Disc Priest",
        ["mage_shadowpriest"] = "Mage/Shadow Priest",
        ["rogue_discpriest"] = "Rogue/Disc Priest",
        ["rogue_shadowpriest"] = "Rogue/Shadow Priest",
        ["hunter_discpriest"] = "Hunter/Disc Priest",
        ["feral_discpriest"] = "Feral/Disc Priest",
        ["deathknight_discpriest"] = "Deathknight/Disc Priest",
        ["ret_discpriest"] = "Ret/Disc Priest",
    },
    ["3v3"] = {
        ["mage_shadowpriest_restoshaman"] = "Mage/Shadow Priest/Resto Shaman",
        ["rogue_mage_discpriest"] = "Rogue/Mage/Disc Priest",
    }
};


core.PRIEST_STRATS = PRIEST_STRATS;
core.PRIEST_COMPS = PRIEST_COMPS;