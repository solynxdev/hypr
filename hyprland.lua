local home = os.getenv("HOME")
local hypr = home .. "/.config/hypr"

package.path = package.path
    .. ";" .. hypr .. "/?.lua"
    .. ";" .. hypr .. "/?/init.lua"

require("config.variables")
require("config.env")
require("config.autostart")
require("config.monitors")
require("config.settings")
require("config.rules")
require("config.gestures")
require("config.keybinds")
require("config.hyprglass")

local smw = require("plugins.split-monitor-workspaces")
smw.setup({
    workspace_count = 100,
})
