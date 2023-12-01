local _, core = ...;


local CLASS_ICONS = {
    ["WARRIOR"] = "Interface\\Icons\\ClassIcon_Warrior",
    ["ROGUE"] = "|TInterface\\Icons\\ClassIcon_Rogue:24|t",
    ["PRIEST"] = {
        ["SHADOW"] = "|TInterface\\Icons\\Spell_Shadow_Shadowform:24|t",
        ["DISCIPLINE"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
    },
    ["PALADIN"] = {
        ["HOLY"] = "Interface\\Icons\\Spell_Holy_HolyBolt"
    },
    ["DEATHKNIGHT"] = "deathknight Icon",
    ["MAGE"] = "T|Interface\\Icons\\ClassIcon_Mage:24|t",
    ["FERAL"] = "feral Icon",
    ["RESTO_DRUID"] = "Resto Druid Icon",
    ["WARLOCK"] = "Interface\\Icons\\ClassIcon_Warlock",
    ["ELEMENTAL_SHAMAN"] = "ELEMENTAL_SHAMAN Icon",
    ["RESTO_SHAMAN"] = "RESTO_SHAMAN Icon",
    ["ENHANCEMENT_SHAMAN"] = "ENHANCEMENT Icon"
}


core.CLASS_ICONS = CLASS_ICONS;