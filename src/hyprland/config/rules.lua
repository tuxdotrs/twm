-- https://wiki.hyprland.org/Configuring/Window-Rules/

local current_gaps_out = hl.get_config("general.gaps_out")

hl.workspace_rule({
  workspace = "special:scratchpad",
  gaps_in = 0,
  gaps_out = {
    top = current_gaps_out.top,
    right = current_gaps_out.right,
    bottom = 600,
    left = current_gaps_out.left,
  },
  on_created_empty = "kitty",
})

-- Tags
hl.window_rule({ float = true, match = { tag = "float" } })
hl.window_rule({ opacity = 1, match = { tag = "opaque" } })
hl.window_rule({ border_size = 2, match = { tag = "bordered" } })

hl.window_rule({
  name = "Float by title",
  match = {
    title = "Font Manager|Volume Control|Qalculate!|Library|Add bookmark|Select what to share",
  },

  float = true,
  center = true,
  persistent_size = true,
})

hl.window_rule({
  name = "Float by class",
  match = {
    class = "org.pulseaudio.pavucontrol|floating-terminal|com.ghostty.floating|GalaxyBudsClient|rog-control-center|xdg-desktop-portal-gtk|com.gabm.satty",
  },

  float = true,
  center = true,
  persistent_size = true,
})

hl.window_rule({
  name = "Thunar dialogs",
  match = {
    class = "thunar|Thunar",
    title = 'Rename "*.*"|File Operation Progress|Confirm to replace files|Attention',
  },

  float = true,
  persistent_size = true,
})

hl.window_rule({
  name = "Thunar stayfocused",
  match = {
    class = "thunar|Thunar",
    title = 'Attention|Rename "*.*"|Create Document from .*|New .* ...|Create New Folder',
  },

  stay_focused = true,
})

hl.window_rule({
  name = "Thunar move right bottom",
  match = {
    title = "^(File Operation Progress)$",
    class = "(thunar|Thunar)",
  },

  focus_on_activate = false,
  move = "1460 970",
})

hl.window_rule({
  name = "Thunar menu force center",
  match = {
    title = "^(Confirm to replace files)$",
    class = "(thunar|Thunar)",
  },

  center = true,
})

hl.window_rule({
  name = "Firefox Picture in Picture",
  match = {
    title = "Picture-in-Picture",
    class = "^(zen)(.*)$",
  },

  size = "250 140",
  move = "1650 50",
  border_size = 2,
  pin = true,
  float = true,
  no_initial_focus = true,
  focus_on_activate = true,
  keep_aspect_ratio = true,
})

hl.window_rule({
  match = { class = "(cs2|steam_app_1091500)" },
  immediate = true,
})

hl.window_rule({
  match = { class = "(discord|vesktop|org.telegram.desktop)" },
  workspace = "7 silent",
})
