
local sets = require "api.sets"

return {
    surface_hexes = {},
    flattened_surface_hexes = {}, ---@type {[int]: HexPos[]}
    surface_transformations = {},
    hex_span = {},
    mgs = {},
    resource_weighted_choice = {},
    gleba_ignore_tiles = sets.new {
        "wetland-yumako",
        "natural-yumako-soil",
        "wetland-jellynut",
        "natural-jellynut-soil",

        "wetland-dead-skin",
        "wetland-light-dead-skin",
        "wetland-green-slime",
        "wetland-light-green-slime",
        "wetland-red-tentacle",
        "wetland-pink-tentacle",
        "wetland-blue-slime",
    },

    -- Whether hexes are placed at the exact regular-hexagon spacing instead of on the tile-aligned lattice.
    -- Only worlds generated before the lattice existed use it, so it is false for every new world.
    continuous_geometry = false,

    pool_size = 25,
    chunk_generation_range_per_player = 7,
    show_trade_flying_text = {},

    claim_cost_multiplier = {}, ---@type {[string]: number}
}
