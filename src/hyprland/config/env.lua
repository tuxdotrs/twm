-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- hl.env("EDITOR", "nvim")
-- hl.env("TERMINAL", "wezterm")
-- hl.env("BROWSER", "brave")
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card0")

-- Wayland realted variables
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("DESKTOP_SESSION", "Hyprland")

-- GTK4 apps use discrete gpu, this fixes it
hl.env("GSK_RENDERER", "opengl")
hl.env("GDK_BACKEND", "wayland,x11,*")

-- Qt related environment variables
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
