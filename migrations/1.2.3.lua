storage = (storage or {}) --[[@as TheOneModWithUndergroundBitsStorage]]

for _, tracker in pairs(storage.trackers) do
  local entity = tracker.entity
  if entity.valid and entity.type == "entity-ghost" then
    local tags = entity.tags and entity.tags.tomwub_players or {}
    local new_tags = {tomwub_players = {}}
    ---@diagnostic disable-next-line: param-type-mismatch
    for player in pairs(tags) do
      new_tags.tomwub_players[#new_tags.tomwub_players + 1] = player
    end
    entity.tags = new_tags
  end
end