function theme_colour(role, fallback)
    local home  = os.getenv("HOME")
    local state = os.getenv("XDG_STATE_HOME") or (home .. "/.local/state")
    local file  = io.open(state .. "/larpantinum/qs_colors.json", "r")
    if not file then return fallback end

    local content = file:read("*a")
    file:close()

    local ok, palette = pcall(require("utils.json").decode, content)
    if ok and type(palette) == "table" and type(palette[role]) == "string" then
        return (palette[role]:gsub("^#", ""))
    end
    return fallback
end
