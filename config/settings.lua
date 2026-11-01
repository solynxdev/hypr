local vars = require("config.variables")

hl.config({
  general = {
    border_size = vars.windowBorderSize,
    gaps_in = 4,
    gaps_out = 12,
    float_gaps = 12,
    resize_on_border = true,
    extend_border_grab_area = 30,
    col = {
      active_border   = vars.activeWindowBorderColour,
      inactive_border = vars.inactiveWindowBorderColour,
    },
  },

  decoration = {
    rounding = 12,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    blur = {
      enabled = true,
      size = 8,
      passes = 2,
      new_optimizations = true,
    },
    shadow = {
      enabled = false,
    },
  },

  input = {
    kb_layout = "us",
    kb_options = "grp:alt_shift_toggle",
    accel_profile = "flat",
    touchpad = {
      natural_scroll = true,
      disable_while_typing = vars.touchpadDisableTyping,
      scroll_factor = vars.touchpadScrollFactor,
    },
  },

  misc = {
    focus_on_activate = false,
    font_family = "JetBrains Mono",
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
  },
})

hl.curve("myBezier", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 8, bezier = "myBezier", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 8, bezier = "myBezier", style = "popin 80%" })
hl.animation({ leaf = "layers", enabled = true, speed = 8, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 8, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 8, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "fade", enabled = true, speed = 8, bezier = "myBezier" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 8, bezier = "myBezier", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 8, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 8, bezier = "myBezier", style = "fade" })
