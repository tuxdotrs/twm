-- https://wiki.hypr.land/Configuring/Basics/Binds/

local terminal = "kitty"
local floating_terminal = "kitty --class floating-terminal"
local editor = "kitty -e nvim"
local file_manager = "kitty -e superfile"
local resource_monitor = floating_terminal .. " -e btop"
local network_manager = floating_terminal .. " -e impala"
local bluetooth_manager = floating_terminal .. " -e bluetui"
local launcher = "vicinae toggle"
local browser = "brave-origin --new-window"

-- Total workspaces used
local workspaces = 7

-- Generates layout specific binds to avoid error warnings
local function layout_bind(bind_table)
  return function()
    local layout = hl.get_config("general.layout")

    if bind_table[layout] then
      hl.dispatch(bind_table[layout])
    end
  end
end

-- Apps
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(launcher))
hl.bind("SUPER + F", hl.dsp.exec_cmd(file_manager))
hl.bind("SUPER + E", hl.dsp.exec_cmd(editor))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + G", hl.dsp.exec_cmd("GalaxyBudsClient"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("Telegram"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("vicinae deeplink vicinae://launch/clipboard/history"))

hl.bind("SUPER + SHIFT + RETURN", hl.dsp.exec_cmd(floating_terminal))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(bluetooth_manager))
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd(network_manager))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd(resource_monitor))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("voxtype record start"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("voxtype record stop"), { release = true })
hl.bind("SUPER + CTRL + EQUAL", function()
  local current_gaps_in = hl.get_config("general.gaps_in")
  local current_gaps_out = hl.get_config("general.gaps_out")

  hl.config({
    general = {
      gaps_in = current_gaps_in.top + 5,
      gaps_out = current_gaps_out.top + 5,
    },
  })
end)
hl.bind("SUPER + CTRL + MINUS", function()
  local current_gaps_in = hl.get_config("general.gaps_in")
  local current_gaps_out = hl.get_config("general.gaps_out")

  hl.config({
    general = {
      gaps_in = current_gaps_in.top - 5,
      gaps_out = current_gaps_out.top - 5,
    },
  })
end)
hl.bind("SUPER + CTRL + T", hl.dsp.layout("togglesplit"))

-- Clients
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.kill())
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + SHIFT + P", hl.dsp.window.pin())
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + SHIFT + SPACE", function()
  hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
  hl.dispatch(hl.dsp.window.resize({ x = 1800, y = 1100 }))
  hl.dispatch(hl.dsp.window.center())
end)

-- tShell
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("serpantinum msg toggle wallpaper"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("serpantinum screenshot"))
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("serpantinum lock"))
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("serpantinum msg toggle system"))

-- Move focus SUPER + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- Move windows
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + equal", hl.dsp.window.center())

-- Resize windows
hl.bind("SUPER + CTRL + left", hl.dsp.window.resize({ x = -20, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + right", hl.dsp.window.resize({ x = 20, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + up", hl.dsp.window.resize({ x = 0, y = -20, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + down", hl.dsp.window.resize({ x = 0, y = 20, relative = true }), { repeating = true })

-- Switch workspaces: SUPER + [1-workspaces]
-- Move active window to workspace: SUPER + SHIFT [1-workspaces]
-- Move active window to workspace and follow: SUPER + CTRL [1-workspaces]
for i = 1, workspaces do
  hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
  hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
  hl.bind("SUPER + CTRL + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + GRAVE", hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind("SUPER + SHIFT + grave", hl.dsp.window.move({ workspace = "special:scratchpad", follow = false }))

-- Misc laptop / function key binds
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("asusctl leds next"), { locked = true })
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("asusctl leds prev"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +10%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"),
  { locked = true, repeating = true }
)
hl.bind(
  "XF86AudioLowerVolume",
  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%-"),
  { locked = true, repeating = true }
)

hl.bind("XF86Launch4", hl.dsp.exec_cmd("asusctl profile -n"))

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
