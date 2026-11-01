require("config.colors")

return {
    ------------------
    ---- HYPRLAND ----
    ------------------

    -- Apps
    terminal      = "kitty",
    browser       = "/opt/zen-browser-bin/zen-bin",
    editor        = "zeditor",
    fileExplorer  = "thunar",
    audioSettings = "pavucontrol",

    -- Touchpad / gestures
    touchpadDisableTyping = true,
    touchpadScrollFactor  = 0.3,
    gestureFingers        = 3,
    workspaceSwipeFingers = 3,
    gestureFingersMore    = 4,
    sleepGestureCmd       = "systemctl suspend-then-hibernate",

    -- Cursor
    cursorTheme = "Vision-White",
    cursorSize  = 24,

    -- Volume
    volumeStep = 10,
    volumeMax  = 100,

    -- Window styling (used by rules.lua)
    windowOpacity       = 0.95,
    windowRounding      = 16,

    windowBorderSize           = 0,
    activeWindowBorderColour   = "rgba(" .. theme_colour("blue", "c2c1ff") .. "e6)",
    inactiveWindowBorderColour = "rgba(" .. theme_colour("subtext0", "c8c5d1") .. "11)",

    ------------------
    ---- KEYBINDS ----
    ------------------

    -- Modifier only, the actual binds will be mod + 0-9. These should be strings and not arrays.
    kbGoToWs                   = "SUPER",
    kbGoToWsGroup              = "CTRL + SUPER",
    kbMoveWinToWs              = "SUPER + SHIFT",
    kbMoveWinToWsGroup         = "CTRL + SUPER + ALT",

    -- All the following binds can be either an array of binds to bind multiple keys, or a single string.

    -- Workspaces
    kbMoveWinToWsSpecial       = { "SUPER + ALT + S", "CTRL + SUPER + SHIFT + Up" },
    kbMoveWinFromWsSpecial     = "CTRL + SUPER + SHIFT + Down",
    kbMoveWinToWsNext          = { "SUPER + ALT + mouse_down", "SUPER + ALT + Page_Down", "CTRL + SUPER + SHIFT + Right" },
    kbMoveWinToWsPrev          = { "SUPER + ALT + mouse_up", "SUPER + ALT + Page_Up", "CTRL + SUPER + SHIFT + Left" },
    kbNextWs                   = { "SUPER + mouse_down", "CTRL + SUPER + Right", "SUPER + Page_Down" },
    kbPrevWs                   = { "SUPER + mouse_up", "CTRL + SUPER + Left", "SUPER + Page_Up" },
    kbNextWsGroup              = "CTRL + SUPER + mouse_down",
    kbPrevWsGroup              = "CTRL + SUPER + mouse_up",

    -- Window Group
    kbWindowCycleNext          = "ALT + TAB",
    kbWindowCyclePrev          = "SHIFT + ALT + TAB",
    kbWindowGroupCycleNext     = "CTRL + ALT + TAB",
    kbWindowGroupCyclePrev     = "CTRL + SHIFT + ALT + TAB",
    kbUngroup                  = "SUPER + U",
    kbToggleGroup              = "SUPER + Comma",
    kbGroupLockActive          = "SUPER + SHIFT + Comma",

    -- Window Actions
    kbWindowDecreaseWidth      = { "SUPER + Minus", "SUPER + ALT + Left" },
    kbWindowIncreaseWidth      = { "SUPER + Equal", "SUPER + ALT + Right" },
    kbWindowDecreaseHeight     = { "SUPER + SHIFT + Minus", "SUPER + ALT + Up" },
    kbWindowIncreaseHeight     = { "SUPER + SHIFT + Equal", "SUPER + ALT + Down" },

    kbMoveWindow               = "SUPER + Z",
    kbResizeWindow             = "SUPER + X",
    kbCenterWindow             = "CTRL + SUPER + Backslash",
    kbNormalizeWindow          = "CTRL + SUPER + ALT + Backslash",
    kbWindowPip                = "SUPER + ALT + Backslash",
    kbPinWindow                = "SUPER + P",
    kbWindowFullscreen         = "SUPER + F",
    kbWindowBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWindowFloating     = "SUPER + ALT + Space",
    kbCloseWindow              = "SUPER + Q",

    -- Special workspaces toggles
    kbSpecialWs                = "SUPER + S",
    kbSystemMonitorWs          = "CTRL + SHIFT + Escape",
    kbMusicWs                  = "SUPER + R",
    kbCommunicationWs          = "SUPER + D",
    kbTodoWs                   = "SUPER + M",

    -- Apps
    kbTerminal                 = "SUPER + E",
    kbBrowser                  = "SUPER + A",
    kbEditor                   = "SUPER + C",
    kbFileExplorer             = "SUPER + W",
    kbAudioSettings            = "CTRL + ALT + V",

    -- Utilities
    kbScreenshot               = "Print",
    kbScreenshotFreeze         = "SUPER + SHIFT + S",
    kbScreenshotRegion         = "SUPER + SHIFT + ALT + S",
    kbRecord                   = "CTRL + ALT + R",
    kbRecordSound              = "SUPER + ALT + R",
    kbRecordRegion             = "SUPER + SHIFT + ALT + R",
    kbColorPicker              = "SUPER + SHIFT + C",

    -- Media
    kbMediaToggle              = "CTRL + SUPER + Space",
    kbMediaNext                = "CTRL + SUPER + Equal",
    kbMediaPrev                = "CTRL + SUPER + Minus",
    kbMediaStop                = "CTRL + SUPER + Backspace",
    kbVolumeMute               = "SUPER + SHIFT + M",

    -- Misc
    kbLauncher                 = "SUPER + SUPER_L",
    kbSession                  = "CTRL + ALT + Delete",
    kbShowSidebar              = "SUPER + N",
    kbClearNotifs              = "CTRL + ALT + C",
    kbShowPanels               = "SUPER + K",
    kbLock                     = "SUPER + L",
    kbRestoreLock              = "SUPER + ALT + L",
    kbSleep                    = "SUPER + SHIFT + L",

    -- Clipboard and emoji picker
    kbClipboard                = "SUPER + V",
    kbClipboardDel             = "SUPER + ALT + V",
    kbClipboardPasteLatest     = "CTRL + SHIFT + ALT + V",
    kbEmoji                    = "SUPER + Period",
}
