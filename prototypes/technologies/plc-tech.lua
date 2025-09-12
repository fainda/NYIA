data:extend({
    {
        --[[
            Unlocks basic PLC prototypes (Rack, first PLC tier) and the NYIA Portal
        ]]
        type = "technology",
        icon = "__NYIA__/prototypes/technologies/icons/plc-core.png",
        icon_size = 256,
        essential = true,
        unit = {                                    --TODO: balancing
        count = 10,
        time = 10,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        }
    },
    prerequisites = {
        "advanced-circuit",
        "circuit-network"
    },
    effects = {
        --{   --Rack
        --    type = "unlock-recipe",
        --    recipe = "plc-rack"
        --},
        {   --CPU 1
            type = "unlock-recipe",
            recipe = "plc-non-modular"
        },
        {   --NYIA Portal
            type = "nothing",
            icon = "__NYIA__/prototypes/technologies/icons/effects/nyia-portal.png",
            icon_size = 64,
            effect_description = {"effect-description.nyia-portal"}
        }
    },
    name = "plc-core"
    }
})