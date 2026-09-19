-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- hl.env("EDITOR", "nvim")
-- hl.env("TERMINAL", "wezterm")
-- hl.env("BROWSER", "brave")
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card0")

local HOME = os.getenv("HOME")

-- Disables realtime priority setting by Hyprland. I Allready have ananicy
hl.env("HYPRLAND_NO_RT", "1")

-- Wayland realted variables
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("DESKTOP_SESSION", "Hyprland")

-- GTK4 apps use discrete gpu, this fixes it
-- I've put the same into /etc/environment
hl.env("GSK_RENDERER", "opengl")

-- Qt related environment variables
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
