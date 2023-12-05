local _, core = ...;

local ALL_STRATS = {}

for bracket, player_comp_list in pairs(ALL_STRATS) do
    for comp_key, comp_text in pairs(core.VIABLE_COMPS[bracket] or {}) do
        player_comp_list[bracket][comp_key] = {};

        for enemy_comp_key in pairs(core.VIABLE_COMPS[bracket] or {}) do
            player_comp_list[bracket][comp_key][enemy_comp_key] = {
                summary = "",
                tips = {}
            };
        end
    end
end

core.ALL_STRATS = ALL_STRATS;