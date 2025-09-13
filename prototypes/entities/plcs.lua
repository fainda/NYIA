local base_sounds = require("__base__/prototypes/entity/sounds")
local nyia_sounds = require("__NYIA__/prototypes/entities/sounds")
local hit_effects = require("__base__/prototypes/entity/hit-effects")

data:extend({
  {   --Rack
    type = "container",
    name = "plc-rack-entity",
    icon = "__NYIA__/graphics/icons/plc-rack.png",
    flags = {
        "placeable-neutral",
        "player-creation",
        "get-by-unit-number",
        "hide-alt-info",
        "not-flammable",
        "no-automated-item-removal",
        "no-automated-item-insertion",
        "not-upgradable",
    },
    minable = {mining_time = 1.5, result = "plc-rack-item"},
    max_health = 1000,
    placeable_by = {item = "plc-rack-item", count = 1},
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 8,
    open_sound = base_sounds.metallic_chest_open,
    close_sound = base_sounds.metallic_chest_close,
    working_sound = nyia_sounds.plc_rack_working,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "iron-chest-remnants",
    dying_explosion = "iron-chest-explosion",
    impact_category = "metal",
    icon_draw_specification = {scale = 0.7},
    picture =
    {
      layers =
      {
        {
          filename = "__NYIA__/graphics/entity/plc-rack/plc-rack.png",
          priority = "extra-high",
          width = 62,
          height = 80,
          shift = util.by_pixel(0, -4.5),
          scale = 0.5
        },
        {
          filename = "__NYIA__/graphics/entity/plc-rack/plc-rack-shadow.png",
          priority = "extra-high",
          width = 114,
          height = 40,
          shift = util.by_pixel(13, 5.5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    quality_affects_inventory_size = false,
    inventory_type = "normal",
    circuit_wire_max_distance = 3
  }
})