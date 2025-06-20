return {
    {    "github/copilot.vim",
        init = function()
            vim.g.copilot_node_command = "~/.nvm/versions/node/v22.11.0/bin/node"
        end,
    },
    {
        "olimorris/codecompanion.nvim",
        keys = {
            -- { "<leader>ai", "<cmd>CodeCompanion<cr>",        desc = "AI Inline" },
            -- { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>",  desc = "AI Chat" },
            -- { "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "AI Actions" },
        },
        opts = {
            display = {
                chat = {
                    window = {
                        position = "right",
                    },
                },
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
}
