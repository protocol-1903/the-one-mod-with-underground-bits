
-- The only thing we're doing is auto-join, so don't even bother if it's not enabled
if not script.active_mods["FluidMustFlow"] or not settings.startup["fmf-enable-duct-auto-join"].value then
  --- @param event EventData.on_built_entity|EventData.on_robot_built_entity|EventData.on_space_platform_built_entity|EventData.script_raised_built|EventData.script_raised_revive|EventData.on_cancelled_deconstruction
  return function(event) end
end

--- Calculates the midpoint between two positions.
--- @param pos_1 MapPosition
--- @param pos_2 MapPosition
--- @return MapPosition
function get_midpoint(pos_1, pos_2)
  return {
    x = (pos_1.x + pos_2.x) / 2,
    y = (pos_1.y + pos_2.y) / 2,
  }
end

--- @param event EventData.on_built_entity|EventData.on_robot_built_entity|EventData.on_space_platform_built_entity|EventData.script_raised_built|EventData.script_raised_revive|EventData.on_cancelled_deconstruction
return function (event)
  local entity = event.entity
  if not entity or not entity.valid then
    return
  end

  for _, connection in pairs(entity.get_fluid_box_pipe_connections(1) --[[@as PipeConnection[] ]]) do
    local neighbour = entity.surface.find_entity(entity.name, connection.target_position)
    if neighbour then
      local direction = entity.direction
      local force = entity.force
      local last_user = entity.last_user
      local name = entity.name == "tomwub-duct-small" and "tomwub-duct" or "tomwub-duct-long"
      local position = get_midpoint(entity.position, neighbour.position)
      local surface = entity.surface

      entity.destroy({ raise_destroy = true })
      neighbour.destroy({ raise_destroy = true })

      surface.create_entity({
        name = name,
        position = position,
        direction = direction,
        force = force,
        player = last_user,
        raise_built = true,
        create_build_effect_smoke = false,
      })

      -- Only do one join per build
      break
    end
  end
end
