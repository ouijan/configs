return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        plugins = {
            registers = false,
        },
        win = {
            width = 100,
            border = "solid",
        },
        layout = {
            width = .4,
            spacing = 5,
            -- align = "center",
        },
        wo = {
            winblend = 10,
        },
    },
    keys = {
        {
            "<leader>?",
            function() require("which-key").show({ global = false }) end,
            desc = "Buffer Local Keymaps (which-key)",
        },

        -- Git
        { "<leader>G",  group = "Git", },
        { "<leader>GG", function() Snacks.lazygit() end,                   desc = "Open", },
        { "<leader>Gf", function() Snacks.lazygit.log_file() end,          desc = "File Log", },
        { "<leader>Gl", function() Snacks.lazygit.log() end,               desc = "Log", },


        -- Debugger
        { "<leader>d",  group = "Debugger" },
        { "<leader>dt", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint", },
        { "<leader>dc", function() require("dap").continue() end,          desc = "Continue", },
        { "<leader>di", function() require("dap").step_into() end,         desc = "Step Into", },
        { "<leader>do", function() require("dap").step_over() end,         desc = "Step Over", },
        { "<leader>du", function() require("dap").step_out() end,          desc = "Step Out", },
        { "<leader>dr", function() require("dap").repl.open() end,         desc = "Open REPL", },
        { "<leader>dl", function() require("dap").run_last() end,          desc = "Run Last", },
        {
            "<leader>dq",
            function()
                require("dap").terminate()
                require("dapui").close()
                require("nvim-dap-virtual-text").toggle()
            end,
            desc = "Terminate",
        },
        { "<leader>db", function() require("dap").list_breakpoints() end,                   desc = "List Breakpoints", },
        { "<leader>de", function() require("dap").set_exception_breakpoints({ "all" }) end, desc = "Set Exception Breakpoints", },


        -- Search
        { "<leader>s",  group = "Search" },
        { "<leader>sf", function() require("fzf-lua").files() end,                          desc = "Search Files", },
        { "<leader>sg", function() require("fzf-lua").live_grep() end,                      desc = "Search Grep", },
        { "<leader>sm", function() require("fzf-lua").manpages() end,                       desc = "Search Manuals", },
        { "<leader>sc", function() require("fzf-lua").commands() end,                       desc = "Search Commands", },
        {
            "<leader>s,",
            function()
                require("fzf-lua").files({ cwd = "~/.config" })
            end,
            desc = "Search Config Files",
        },
        { "<leader>sr",       function() require("fzf-lua").resume() end,                     desc = "Search Resume", },
        { "<leader><leader>", function() require("fzf-lua").buffers() end,                    desc = "Search open buffers" },
        { "<leader>sb",       function() require("fzf-lua").builtin() end,                    desc = "Search Builtins" },


        -- Code Actions
        { "<leader>c",        group = "Code" },
        { "<leader>ca",       function() require("fzf-lua").lsp_code_actions() end,           desc = "Code Actions", },
        { "<leader>csd",      function() require("fzf-lua").lsp_document_symbols() end,       desc = "Code Symbols Document", },
        { "<leader>csw",      function() require("fzf-lua").lsp_live_workspace_symbols() end, desc = "Code Symbols Workspace", },
        { "<leader>cf",       function() require("fzf-lua").lsp_finder() end,                 desc = "Code LSP Finder", },
        { "<leader>cdd",      function() require("fzf-lua").diagnostics_document() end,       desc = "Code Diagnostics for Document", },
        { "<leader>cdw",      function() require("fzf-lua").diagnostics_workspace() end,      desc = "Code Diagnostics for Workspce", },

        -- Go to
        { "<leader>g",        group = "Go to" },
        { "<leader>gd",       function() require("fzf-lua").lsp_definitions() end,            desc = "Go to Definition", },
        { "<leader>gD",       function() require("fzf-lua").lsp_declarations() end,           desc = "Go to Declaration", },
        { "<leader>gr",       function() require("fzf-lua").lsp_references() end,             desc = "Go to References", },

        -- Format & Rename
        { "<leader>f",        function() vim.lsp.buf.format() end,                            desc = "Format" },
        { "<leader>rn",       function() vim.lsp.buf.rename() end,                            desc = "Rename Symbol", },

        -- Quickfix
        -- { "<leader>q",        group = "Quickfix" },
        { "<leader>q",        function() require("fzf-lua").quickfix() end,                   desc = "Quickfix List", },
        -- { "<leader>ql",       function() require("fzf-lua").loclist() end,                    desc = "Location List", },
        -- { "<leader>qj",       function() require("fzf-lua").jumplist() end,                   desc = "Jump List", },
        -- { "<leader>qk",       function() require("fzf-lua").keymaps() end,                    desc = "Keymaps" },
        --

        -- AI
        { "<leader>ai",       "<cmd>CodeCompanion<cr>",                                       desc = "AI Inline" },
        { "<leader>ac",       "<cmd>CodeCompanionChat Toggle<cr>",                            desc = "AI Chat" },
        { "<leader>aa",       "<cmd>CodeCompanionActions<cr>",                                desc = "AI Actions" },
    },
}
