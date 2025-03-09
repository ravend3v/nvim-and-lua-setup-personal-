return {
    "rmagatti/auto-session",
    config = function()
        require("auto-session").setup ({
           -- supress
           auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads" },

           -- sessions lens
           sessions_lens = {
                buftypes_to_ignore = {},
                load_on_setup = true,
                theme_conf = { border = true },
                previewer = false,
           },
        })
    end,
}