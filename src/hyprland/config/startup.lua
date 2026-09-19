-- https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
  local cmds = {
    "dbus-update-activation-environment --systemd --all && systemctl --user stop hyprland-session.target && systemctl --user start hyprland-session.target",
    "vesktop",
    "Telegram",
  }

  for i = 1, #cmds do
    local cmd = cmds[i]
    hl.exec_cmd(cmd)
  end
end)
