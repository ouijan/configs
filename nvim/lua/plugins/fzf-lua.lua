return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        "borderless",
        -- "max-perf",
        "hide", -- fix for resume
        defaults = {
            previewer = false,
        },
        files = {
            formatter = "path.filename_first",
            previewer = true,
        },
        grep = {
            previewer = true,
        },
        lsp = {
            --
        },
        winopts = {
            border = "solid",
            preview = {
                title = false,
                border = "solid",
            },
        },
        hls = {
            preview_normal = "NormalFloat",
            preview_border = "NormalFloat",
        },
        keymap = {
            fzf = {
                ["ctrl-q"] = "select-all+accept",
            },
        }
    },
    config = function(_, opts)
        local fzf = require('fzf-lua')
        fzf.setup(opts)
        fzf.register_ui_select()
    end
}
