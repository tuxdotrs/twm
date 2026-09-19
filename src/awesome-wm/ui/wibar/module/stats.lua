-- Stats widget for Awesome Window Manager
local watch = require("awful.widget.watch")
local wibox = require("wibox")

local cpu = wibox.widget.textbox("NA")
watch('bash -c "cat /sys/class/thermal/thermal_zone*/temp"', 10, function(_, stdout)
  cpu.text = "CPU: " .. stdout / 1000 .. " °C"
end)

return function()
  return cpu
end
