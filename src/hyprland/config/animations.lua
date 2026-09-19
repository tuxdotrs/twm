--  https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

hl.curve("zoom", { type = "bezier", points = { { 0.05, 0.70 }, { 0.10, 1.00 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 1.0, bezier = "zoom", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.0, bezier = "zoom", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.0, bezier = "zoom", style = "slidevert" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1.0, bezier = "zoom", style = "slide" })

hl.animation({ leaf = "fade", enabled = true, speed = 2.0, bezier = "zoom" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 1.0, bezier = "zoom", style = "slide" })

hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 3, bezier = "easeOutQuint", style = "slide top" })
hl.animation({
  leaf = "specialWorkspaceOut",
  enabled = true,
  speed = 2,
  bezier = "easeInOutCubic",
  style = "slide bottom",
})
