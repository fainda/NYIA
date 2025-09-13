require("__NYIA__/prototypes/technologies/plc-tech.lua")
require("__NYIA__/prototypes/items/plcs.lua")
require("__NYIA__/prototypes/recipes/plcs.lua")
require("__NYIA__/prototypes/entities/plcs.lua")

data:extend({
    {--NYIA Portal shortcut
        type = "shortcut",
        name = "nyia-portal-shortcut",
        action = "lua",
        icon = "__NYIA__/graphics/icons/nyia-portal.png",        --TODO: update icon
        small_icon = "__NYIA__/graphics/icons/nyia-portal.png",  --TODO: update icon
        unavailable_until_unlocked = true,
        technology_to_unlock = "plc-core-technology",
        toggleable = true
    }
})