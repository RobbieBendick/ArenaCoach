local _, core = ...;

local SHAMAN_STRATS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = {
            ["warrior_holypaladin"] = {
                summary = "Earthgrab/Hex Warrior (or Seduce) & Fear Paladin at the same time. Dot Paladin in the fear and burst him in a shadowfury.",
                tips = {
                    "Once you get cooldowns with your offensive CC, you'll have to avoid damage and run away from the Warrior.",
                    "Once your DR's are reset, you should do another offensive push doing the summary.",
                }
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
                summary = "Hex Priest (Or Seduce) & Fear Paladin at the same time. Burst Paladin with a Shadowfury.",
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
                summary = "CC Paladin & kill Hunter with shadowfuries",
                tips = {
                    "Bloodlust/Heroism instantly on commitment."
                }
            },
            ["hunter_discpriest"] = {
                summary = "CC Priest & kill Hunter",
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
                summary = "Kill Paladin in a Fear while Shaman is CC'd",
                tips = {
                    "Hex (or Seduce) Shaman & Fear Paladin, Purge & dot Paladin in the fear, and start casting damage before the fear ends on the Paladin, and shadowfury the Paladin off of the fear while killing him.",
                    "Wind Shear the Ele Shaman most of the game.",
                    "Grounding totem is best used for hex, and second best is Lava Burst.",
                }
            },
            ["enhanceshaman_hunter"] = {
                summary = "Kill Hunter & CC Shaman",
                tips = {
                    "Bloodlust/Heroism instantly on commitment."
                }
            },
            ["enhanceshaman_ret"] = {
                summary = "Kill Ret, CC Shaman.",
                tips = {
                    "Bloodlust/Heroism instantly on commitment.",
                    "Hex Shaman, but watch out for Grounding Totem!"
                }
            }
        },
        ['warlock_restoshaman'] = {
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
        ["eleshaman_holypaladin"] = {
            ["warrior_holypaladin"] = {
                summary = "Both of you should stay ontop of the Paladin, allowing the Ele to get double earthgrab roots while you kill the Paladin.",
                tips = {
                    "Purge divine plea, the way you win this is usually by mana.",
                    "Purge freedom from Warrior to continue to double root to relieve pressure.",
                    "If you're having trouble staying on the Paladin as the Ele, you can try to swap to Frostbrand Weapon while ontop  to weave some stabs in, and stab them as you run around the pillar with them while continuing your rotation.",
                    "Apply flame shock right before you root to prevent root dispel.",
                    "Hex Warrior on cooldown, but be careful of spell reflect! (Wind shear to consume the spell reflect)"
                }
            },
            ["mage_shadowpriest"] = {
                summary = "Survive their setups and spam purge Mage to kill Mage.",
                tips = {
                    "Communicate on who is going to prevent the next polymorph cc chain onto the Paladin. (Sac, Grounding, Shear, Hex, etc)",
                    "Try to avoid getting double feared!",
                }
            },
            ["feral_discpriest"] = {
                summary = "Purge & kill feral.",
                tips = {
                    "If they hit the Holy Paladin, the Paladin should be continuously running from the Priest, trying to range and line of sight Mana Burns.",
                    "Purge Predator's Swiftness from the feral druid to prevent instant Cyclones. (You can grounding as you see it aswell, if too many buffs)",
                }
            },
            ["mage_rogue"] = {
                summary = "Survive their setups. Dot & Kill Rogue.",
                tips = {}
            },
            ["ret_discpriest"] = {
                summary = "Kill Ret & hex Priest",
                tips = {}
            },
            ["ret_restoshaman"] = {
                summary = "Pretty much impossible. Kill the ret with cc on Shaman maybe?",
                tips = {}
            },
            ["ret_deathknight"] = {
                summary = "Kill ret.",
                tips = {
                    "Double root and run in ghost wolf to create distance.",
                    "If you're on a Z-Axis map, make sure you're able to line of sight or grounding totem the death grip after you thunderstorm.",
                }
            },
            ["ret_hunter"] = {
                summary = "Kill hunter",
                tips = {
                    "Bloodlust/Heroism instantly on commitment.",
                    "Hex Ret & HoJ Hunter at the same time.",
                }
            },
            ["hunter_discpriest"] = {
                summary = "Purge & kill Hunter, CC Priest with Hex and HoJ.",
                tips = {
                    "Try to eat or grounding the hunter's trap after scatter."
                }
            },
            ["rogue_discpriest"] = {
                summary = "Purge & kill Rouge, CC Priest with Hex and HoJ.",
                tips = {}
            },
            ["rogue_shadowpriest"] = {
                summary = "Purge & kill Rouge, CC Priest with Hex and HoJ.",
                tips = {}
            },
            ["deathknight_holypaladin"] = {
                summary = "Both of you should stay ontop of the Paladin, allowing the Ele to get double earthgrab roots while you kill the Paladin.",
                tips = {
                    "Purge divine plea, the way you win this is usually by mana.",
                    "Purge freedom from DK to continue to double root to relieve pressure.",
                    "If you're having trouble getting to the Paladin as the Ele, you can try to swap to Frostbrand Weapon while ontop of them to weave some stabs in while continuing your rotation.",
                    "Apply flame shock right before you root to prevent root dispel.",
                    "Hex DK on cooldown, but be careful of AMS!",
                }
            },
            ["warlock_eleshaman"] = {
                summary = "Kill Ele & hex Warlock",
                tips = {}
            },
            ["warlock_restoshaman"] = {
                summary = "Pretty much impossible, kill the Shaman I guess",
                tips = {}
            },
            ["eleshaman_holypaladin"] = {
                summary = "Kill Paladin, hex Shaman off CD and spam interrupt shaman.",
                tips = {
                    "Use Earthgrab to double root them off CD.",
                    "Purge divine plea, the way you win this is usually by mana. If needed, save HoJ to use on the Paladin only when divine plea is active, so the Shaman can catch up and purge.",
                    "If you're having trouble getting to the Paladin as the Ele, you can try to swap to Frostbrand Weapon while ontop of them to weave some stabs in while continuing your rotation.",
                }
            },
            ["enhanceshaman_hunter"] = {
                summary = "Kill hunter, HoJ & Hex shaman.",
                tips = {
                    "Try to line of sight Aimed Shot as best as possible to minimize the MS effect.",
                    "Bloodlust/Heroism instantly on commitment.",
                }
            },
            ["enhanceshaman_ret"] = {
                summary = "Purge & kill Ret, and hex Shaman on CD.",
                tips = {
                    "Bloodlust/Heroism instantly on commitment.",
                }
            }
        },
        ["enhanceshaman_hunter"] = {
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
        ["enhanceshaman_ret"] = {
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
        },
        ["warrior_eleshaman_holypaladin"] = {
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
        }
    }
}; 

local SHAMAN_COMPS = {
    ["2v2"] = {
        ["warlock_eleshaman"] = "Warlock/Ele Shaman",
        ["warlock_restoshaman"] = "Warlock/Resto Shaman",
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
