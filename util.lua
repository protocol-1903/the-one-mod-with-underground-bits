---@class (exact) TOMWUB
---@field downshift uint
---@field pipe_visualizations data.PipePictures
---@field ptg_visualization fun(underground: boolean?): data.Sprite4Way
---@field ptg_visualizations data.Sprite4Way
---@field base_visualizations data.Sprite4Way
---@field dirmap table<int, string>
---@field adjust_recipes fun(id: string)
---@field adjust_ptg fun(prototype: data.PipeToGroundPrototype, pipe: data.PipeName): data.CollisionMaskConnector, data.CollisionLayerName, string
---@field make_tomwub_variant fun(pipe: data.PipePrototype, mask: data.CollisionMaskConnector?, layer: data.CollisionLayerName?, category: string?): data.PipePrototype
---@field default_layer data.CollisionLayerName
---@field default_category string
tomwub = tomwub or {}
tomwub.downshift = 10

tomwub.pipe_visualizations = {
  straight_vertical_single_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 0 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_vertical_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 5 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_vertical_window_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 5 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_horizontal_window_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 10 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_horizontal_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 10 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_up_right_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 3 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_up_left_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 9 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_down_right_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 6 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_down_left_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 12 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_up_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 11 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_down_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 14 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_right_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 7 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_left_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 13 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  cross_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 15 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_up_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 1 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_down_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 4 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_right_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 2 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_left_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-visualization.png",
    priority = "extra-high",
    x = 8 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_vertical_single_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 0 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_vertical_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 5 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_vertical_window_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 5 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_horizontal_window_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 10 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  straight_horizontal_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 10 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_up_right_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 3 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_up_left_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 9 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_down_right_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 6 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  corner_down_left_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 12 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_up_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 11 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_down_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 14 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_right_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 7 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  t_left_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 13 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  cross_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 15 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_up_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 1 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_down_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 4 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_right_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 2 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
  ending_left_disabled_visualization = {
    filename = "__the-one-mod-with-underground-bits__/graphics/underground-disabled-visualization.png",
    priority = "extra-high",
    x = 8 * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  },
}

tomwub.ptg_visualization = function(underground)
  return {
    north = {
      filename = underground and "__the-one-mod-with-underground-bits__/graphics/visualization.png" or "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 64,
      width = 64,
      height = 64,
      scale = 0.5,
      shift = underground and util.by_pixel(0, tomwub.downshift) or nil,
      flags = {"icon"}
    },
    south = {
      filename = underground and "__the-one-mod-with-underground-bits__/graphics/visualization.png" or "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 192,
      width = 64,
      height = 64,
      scale = 0.5,
      shift = underground and util.by_pixel(0, tomwub.downshift) or nil,
      flags = {"icon"}
    },
    west = {
      filename = underground and "__the-one-mod-with-underground-bits__/graphics/visualization.png" or "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 256,
      width = 64,
      height = 64,
      scale = 0.5,
      shift = underground and util.by_pixel(0, tomwub.downshift) or nil,
      flags = {"icon"}
    },
    east = {
      filename = underground and "__the-one-mod-with-underground-bits__/graphics/visualization.png" or "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 128,
      width = 64,
      height = 64,
      scale = 0.5,
      shift = underground and util.by_pixel(0, tomwub.downshift) or nil,
      flags = {"icon"}
    }
  }
end

tomwub.ptg_visualizations = {
  north = {
    layers = {
      tomwub.ptg_visualization(true).south,
      tomwub.ptg_visualization().north,
    }
  },
  east = {
    layers = {
      tomwub.ptg_visualization(true).west,
      tomwub.ptg_visualization().east,
    }
  },
  south = {
    layers = {
      tomwub.ptg_visualization(true).north,
      tomwub.ptg_visualization().south,
    }
  },
  west = {
    layers = {
      tomwub.ptg_visualization(true).east,
      tomwub.ptg_visualization().west,
    }
  },
}

tomwub.base_visualisation = {
  north = {layers = {
    tomwub.ptg_visualization().north --[[@as data.Sprite]]
  }},
  east = {layers = {
    tomwub.ptg_visualization().east --[[@as data.Sprite]]
  }},
  south = {layers = {
    tomwub.ptg_visualization().south --[[@as data.Sprite]]
  }},
  west = {layers = {
    tomwub.ptg_visualization().west --[[@as data.Sprite]]
  }},
}

tomwub.dirmap = {
  [0] = "north",
  "east",
  "south",
  "west"
}

---@diagnostic disable-next-line: unresolved-require
local recycling = mods.recycling and require("__recycling__.prototypes.recycling") or nil

tomwub.adjust_recipes = function(id)
  log("adjusting recipes for: " .. id)
  for _, recipe in pairs{
    id,
    "casting-" .. id
  } do
    -- if recipe exists
    if data.raw.recipe[recipe] then
      for _, ingredient in pairs(data.raw.recipe[recipe].ingredients --[[@as data.IngredientPrototype[] ]]) do
        if data.raw.pipe[ingredient.name] and ingredient.amount > 2 then
          ingredient.amount = 2 -- if a pipe, set amount to 2
        end
      end
    end
  end

  -- if recycling recipe exists
  if data.raw.recipe[id .. "-recycling"] and recycling then
    recycling.generate_recycling_recipe(data.raw.recipe[id])
  end
end

data:extend{{
  type = "mod-data",
  name = "the-one-mod-with-underground-bits",
  data = {underground_definitions = {}}
}}

local underground_definitions = data.raw["mod-data"]["the-one-mod-with-underground-bits"].data.underground_definitions

tomwub.adjust_ptg = function(prototype, pipe)
  log("adjusting pipe to ground: " .. prototype.name)
  prototype.solved_by_tomwub = true
  ---@type data.CollisionMaskConnector, data.CollisionLayerID, string
  local underground_collision_mask, layer, connection_category
  for _, pipe_connection in pairs(prototype.fluid_box.pipe_connections) do
    if pipe_connection.connection_type == "underground" then
      underground_definitions[prototype.name] = {
        direction = pipe_connection.direction,
        distance = pipe_connection.max_underground_distance,
        associated_pipe = "tomwub-" .. pipe
      }
      -- make the underground a fake underground
      pipe_connection.connection_type = "normal"
      pipe_connection.max_underground_distance = nil
      -- set the filter to the psuedo underground pipe name
      pipe_connection.connection_category = type(pipe_connection.connection_category) == "table" and pipe_connection.connection_category[1] or pipe_connection.connection_category or "underground"
      if not mods["no-pipe-touching"] then
        pipe_connection.connection_category = "tomwub-" .. pipe_connection.connection_category
      elseif not prototype.npt_compat then
        pipe_connection.connection_category = "tomwub-" .. pipe .. "-underground"
      elseif prototype.npt_compat.tag then
        pipe_connection.connection_category = "tomwub-" .. prototype.npt_compat.mod .. "-" .. prototype.npt_compat.tag .. "-underground"
      elseif prototype.npt_compat.override then
        pipe_connection.connection_category = "tomwub-" .. prototype.npt_compat.override .. "-underground"
      end
      -- save collision mask for later
      underground_collision_mask = pipe_connection.underground_collision_mask or {layers = {}}
      connection_category = pipe_connection.connection_category --[[@as string]]
      layer = settings.startup["npt-tomwub-weaving"].value and pipe_connection.connection_category --[[@as data.CollisionLayerName]] or "tomwub-underground"
    end
  end

  prototype.visualization = tomwub.ptg_visualizations
  prototype.collision_mask = prototype.collision_mask or {
    layers = {
      is_lower_object = true,
      water_tile = true,
      floor = true,
      transport_belt = true,
      item = true,
      car = true,
      meltable = true
    }
  }

  prototype.collision_mask.layers[layer] = true
  if settings.startup["npt-tomwub-weaving"].value then prototype.next_upgrade = nil end
  return underground_collision_mask, layer, connection_category
end

tomwub.default_layer = settings.startup["npt-tomwub-weaving"].value and "tomwub-pipe-underground" or "tomwub-underground"
tomwub.default_category = not mods["no-pipe-touching"] and "tomwub-underground" or "tomwub-pipe-underground"

tomwub.make_tomwub_variant = function(pipe, mask, layer, category)
  log("making underground variant of: " .. pipe.name)
  -- create new item, entity, and collision layer
  local item = table.deepcopy(data.raw.item[pipe.name])
  if item then
    item.name = "tomwub-" .. pipe.name
    item.place_result = "tomwub-" .. pipe.name
    item.flags = {"only-in-cursor"}
  end

  local u_pipe = table.deepcopy(pipe)
  u_pipe.name = "tomwub-" .. pipe.name
  u_pipe.localised_name = {"?", {"entity-name.tomwub-" .. pipe.name}, {"entity-name.tomwub-underground", pipe.localised_name or {"entity-name." .. pipe.name}}}
  u_pipe.localised_description = pipe.localised_description or {"entity-description." .. pipe.name}
  u_pipe.collision_mask = mask or { layers = {} }
  u_pipe.flags = {"not-upgradable", "player-creation", "placeable-neutral", "not-flammable"}
  u_pipe.placeable_by = {{item = pipe.name, count = 1}, {item = "tomwub-" .. pipe.name, count = 1}}
  u_pipe.resistances = underground_total_resistances
  u_pipe.hide_resistances = true
  u_pipe.horizontal_window_bounding_box = {{0,0},{0,0}}
  u_pipe.vertical_window_bounding_box = {{0,0},{0,0}}
  u_pipe.selectable_in_game = false
  u_pipe.selection_priority = 1
  u_pipe.is_military_target = false
  u_pipe.fast_replaceable_group = settings.startup["npt-tomwub-weaving"].value and u_pipe.name or "tomwub-pipe"
  u_pipe.next_upgrade = nil
  u_pipe.hidden_in_factoriopedia = true
  u_pipe.factoriopedia_alternative = pipe.name

  data:extend{u_pipe, item}

  -- since we can only check while in the loop
  if settings.startup["npt-tomwub-weaving"].value and table_size(data.raw["collision-layer"]) == 256 then
    local ptg_list = ""
    for prototype in pairs(data.raw["pipe-to-ground"]) do
      ptg_list = ptg_list .. "- " .. prototype .. "\n"
    end
    error("There are too many pipes. Please remove one of the following mods:\n" .. (
      (mods["color-coded-pipes"] and "- Color Coded Pipes\n" or "") ..
      (mods["RGBPipes"] and "- RGB Pipes\n" or "") ..
      (mods["pipe-tiers"] and "- Pipe Tiers\n" or "")
    ) .. "\nOr disable the mod setting: Enable underground pipe weaving.\n\nOr remove a mod that adds some of the following:\n" .. ptg_list)
  end

  if layer and settings.startup["npt-tomwub-weaving"].value then
    data.extend{{
      type = "collision-layer",
      name = layer
    }}
  end

  for _, pipe_connection in pairs(u_pipe.fluid_box.pipe_connections) do
    pipe_connection.connection_category = category or tomwub.default_category
  end

  -- set the collision mask to the connection_category collected earlier
  u_pipe.collision_mask.layers[layer or tomwub.default_layer] = true

  -- shift everything down
  u_pipe.icon_draw_specification = u_pipe.icon_draw_specification or {}
  u_pipe.icon_draw_specification.shift = util.by_pixel(0, tomwub.downshift)
  u_pipe.icon_draw_specification.scale = 0.35

  -- hide flow pictures
  u_pipe.pictures.gas_flow = nil
  u_pipe.pictures.low_temperature_flow = nil
  u_pipe.pictures.middle_temperature_flow = nil
  u_pipe.pictures.high_temperature_flow = nil

  -- remove unused circuit connector
  u_pipe.circuit_connector = nil
  u_pipe.circuit_wire_max_distance = nil

  u_pipe.radius_visualisation_specification = {
    sprite = {
      filename = "__the-one-mod-with-underground-bits__/graphics/indicators/pipe-straight-vertical-single.png",
      size = 128
    },
    offset = util.by_pixel(0, tomwub.downshift),
    distance = 0.65
  }
  return u_pipe
end

return tomwub