-- Profile widget for Awesome Window Manager
local watch = require("awful.widget.watch")
local wibox = require("wibox")

local profile = wibox.widget.textbox("P: NA")
watch("bash -c \"asusctl profile -p | awk 'END {print $NF}'\"", 10, function(_, stdout)
  profile.text = "P:" .. " " .. stdout
end)

return function()
  return profile
end
