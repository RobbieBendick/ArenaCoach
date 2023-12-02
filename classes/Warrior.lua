local _, core = ...;

local WARRIOR_STRATS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = {
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
    },
    ["3v3"] = {
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
        ["warrior_deathknight_holypaladin"] = {
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

local WARRIOR_COMPS = {
    ["2v2"] = {
        ["warrior_holypaladin"] = "Warrior/Holy Paladin",
    },
    ["3v3"] = {
        ["warrior_eleshaman_holypaladin"] = "Warrior/Ele Shaman/Holy Paladin",
        ["warrior_deathknight_holypaladin"] = "Warrior/Deathknight/Holy Paladin"
    }
}

core.WARRIOR_COMPS = WARRIOR_COMPS;
core.WARRIOR_STRATS = WARRIOR_STRATS;
