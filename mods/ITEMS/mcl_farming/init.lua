mcl_farming = {}

-- IMPORTANT API AND HELPER FUNCTIONS --
-- Contain functions for planting seed, addind plant growth and gourds (melon/pumpkin-like)
dofile(minetest.get_modpath("mcl_farming").."/shared_functions.lua")

-- ========= SOIL =========
dofile(minetest.get_modpath("mcl_farming").."/soil.lua")

-- ========= HOES =========
dofile(minetest.get_modpath("mcl_farming").."/hoes.lua")

-- ========= WHEAT =========
dofile(minetest.get_modpath("mcl_farming").."/wheat.lua")
