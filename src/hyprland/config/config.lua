-- https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,
    gaps_workspaces = 5,
    border_size = 0,
    layout = "dwindle",
    allow_tearing = true,
  },

  master = {
    allow_small_split = false,
    special_scale_factor = 0.8,
    mfact = 0.5,
    new_on_top = false,
    orientation = "left",
    smart_resizing = true,
    drop_at_cursor = true,
  },

  dwindle = {
    force_split = 2,
    preserve_split = true,
    special_scale_factor = 0.95,
  },

  scrolling = {
    column_width = 0.5,
    follow_min_visible = 1.0,
  },

  decoration = {
    rounding = 8,
    active_opacity = 0.9,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,

    blur = {
      enabled = true,
      size = 4,
      passes = 3,
      new_optimizations = true,
      xray = false,
      special = true,
      brightness = 1,
      noise = 0.02,
      contrast = 1,
      popups = true,
      popups_ignorealpha = 0.6,
    },

    shadow = {
      enabled = false,
    },
  },

  input = {
    follow_mouse = 1,
    accel_profile = "flat",
    natural_scroll = false,
    touchpad = {
      natural_scroll = true,
      clickfinger_behavior = false,
    },
    scroll_method = "on_button_down",
    scroll_button = 274,
  },

  cursor = {
    no_hardware_cursors = 1,
  },

  misc = {
    force_default_wallpaper = 0,
    disable_autoreload = true,
    disable_hyprland_logo = true,
    on_focus_under_fullscreen = 2,
    vrr = 0,
  },

  xwayland = {
    enabled = true,
    force_zero_scaling = true,
  },

  ecosystem = {
    no_update_news = true,
    no_donation_nag = true,
  },

  gestures = {
    workspace_swipe_distance = 200,
    workspace_swipe_min_speed_to_force = 200,
    workspace_swipe_direction_lock = false,
    workspace_swipe_create_new = false,
    workspace_swipe_cancel_ratio = 0.1,
  },
})
