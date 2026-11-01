local vars = require("config.variables")

-- Let hyprpm load plugins without a per-boot confirmation prompt.
-- Without this, loading a plugin from an external process (hyprpm) at startup
-- goes through the dynamic permission manager and can block until confirmed.
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

hl.on("hyprland.start", function()
    -- Load enabled hyprpm plugins (e.g. hyprglass) at startup.
    -- hyprpm reload ensures enabled plugins are loaded and rebuilds them if the
    -- Hyprland version changed; loading a plugin re-parses this config so the
    -- hl.plugin.* blocks (config.hyprglass) apply.
    hl.exec_cmd("hyprpm reload")

    -- Keyring and authentication
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- Clipboard history
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Housekeeping
    hl.exec_cmd("trash-empty 30")

    -- Cursors
    hl.exec_cmd("hyprctl setcursor " .. vars.cursorTheme .. " " .. vars.cursorSize)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme " .. vars.cursorTheme)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size " .. vars.cursorSize)

    -- Location provider and night light
    hl.exec_cmd("/usr/lib/geoclue-2.0/demos/agent")
    hl.exec_cmd("sleep 1 && gammastep")

    -- Forward bluetooth media commands to MPRIS
    hl.exec_cmd("mpris-proxy")

    -- Audio effects
    hl.exec_cmd("systemctl --user enable --now easyeffects")

    -- Start shell
    hl.exec_cmd("larpantinumd start")
end)
