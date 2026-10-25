if not mods["underground-heat-pipe"] and not mods["underground-heat-pipe-forked"] then return end

for p, prototype in pairs(data.raw["pipe-to-ground"]) do
  if p:find("underground%-heat%-pipe") then
    prototype.ignore_by_tomwub = true
  end
end