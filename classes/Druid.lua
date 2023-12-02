local _, core = ...;

local DRUID_STRATS = {
    ["2v2"] = {
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
    },
    ["3v3"] = {
        ["feral_hunter_discpriest"] = {
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

local DRUID_COMPS = {
    ["2v2"] = {
        ["feral_discpriest"] = "Feral/Disc Priest"
    },
    ["3v3"] = {
        ["feral_hunter_discpriest"] = "Feral/Hunter/Disc Priest"
    }
};


core.DRUID_STRATS = DRUID_STRATS;
core.DRUID_COMPS = DRUID_COMPS;