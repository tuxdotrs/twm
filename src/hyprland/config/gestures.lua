-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/

hl.gesture({
  fingers = 3,
  direction = "up",
  action = function()
    hl.exec_cmd("brightnessctl s +10%")
  end,
})

hl.gesture({
  fingers = 3,
  direction = "down",
  action = function()
    hl.exec_cmd("brightnessctl s 10%-")
  end,
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})
