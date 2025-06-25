local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Custom ASCII Art Logo
dashboard.section.header.val = {
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██ ]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═ ]],
}

-- Custom Buttons
dashboard.section.buttons.val = {
    dashboard.button("e", "󰈔  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
    dashboard.button("r", "󰋚  Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button(".", "󰉋  Browse config", ":e ~/.config/nvim/ <CR>"),
    dashboard.button("l", "󰒲  Lazy", ":Lazy <CR>"),
    dashboard.button("m", "󱌣  Mason", ":Mason <CR>"),
    dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
}

-- Enhanced Footer with plugin stats
local function get_lazy_stats()
    local ok, lazy = pcall(require, "lazy")
    if not ok then
        return "󰚥 Plugins not loaded"
    end
    local stats = lazy.stats()
    return "⚡ " .. stats.loaded .. "/" .. stats.count .. " plugins loaded"
end

-- Custom Footer
dashboard.section.footer.val = {
    "🚀 Neovim is ready to go!",
    "",
    get_lazy_stats(),
}

-- Apply Theme
alpha.setup(dashboard.config)


