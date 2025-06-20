return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        view_options = {
            show_hidden = true, -- Show hidden files
        },
        float = {
            preview_split = "right",
            border = "solid",
            max_width = .8,
            max_height = 0.8,
        },
    },
    keys = {
        {
            "<leader>-",
            function()
                local oil = require("oil")
                oil.open_float(nil, {
                    preview = {},
                })
                -- oil.open_preview()
            end,
            desc = "Open parent directory"
        },
    },
    lazy = false,
}
