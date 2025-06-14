return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        "hide", -- fix for resume
    },
    config = function()
        local fzf = require('fzf-lua')
        fzf.register_ui_select()

        -- search
        vim.keymap.set("n", "<leader>sf", fzf.files, {
            desc = "[S]earch [F]iles"
        })
        vim.keymap.set("n", "<leader>sg", fzf.live_grep, {
            desc = "[S]earch [G]rep"
        })
        vim.keymap.set("n", "<leader>sm", fzf.manpages, {
            desc = "[S]earch [M]anuals"
        })
        vim.keymap.set("n", "<leader>sc", fzf.commands, {
            desc = "[S]earch [C]ommands"
        })
        vim.keymap.set("n", "<leader>s,", function()
            fzf.files({ cwd = "~/.config" })
        end, {
            desc = "[S]earch Config Files",
        })
        vim.keymap.set("n", "<leader>sr", fzf.resume, {
            desc = "[S]earch [R]esume"
        })
        vim.keymap.set("n", "<leader><leader>", fzf.buffers, {
            desc = "Search open buffers"
        })
        vim.keymap.set("n", "<leader>sb", fzf.builtin, {
            desc = "[S]earch [B]uiltins"
        })

        -- Code Actions
        vim.keymap.set("n", "<leader>ca", fzf.lsp_code_actions, {
            desc = "[C]ode [A]ctions"
        })
        vim.keymap.set("n", "<leader>csd", fzf.lsp_document_symbols, {
            desc = "[C]ode [S]ymbols [D]ocument",
        })
        vim.keymap.set("n", "<leader>csw", fzf.lsp_live_workspace_symbols, {
            desc = "[C]ode [S]ymbols [W]orkspace"
        })
        vim.keymap.set("n", "<leader>cf", fzf.lsp_finder, {
            desc = "[C]ode LSP [F]inder",
        })
        vim.keymap.set("n", "<leader>cdd", fzf.diagnostics_document, {
            desc = "[C]ode  [D]iagnostics for [D]ocument",
        })
        vim.keymap.set("n", "<leader>cdw", fzf.diagnostics_workspace, {
            desc = "[C]ode [D]iagnostics for [W]orkspce",
        })

        -- Go to
        vim.keymap.set("n", "<leader>gd", fzf.lsp_definitions, {
            desc = "[G]o to [D]efinition",
        })
        vim.keymap.set("n", "<leader>gD", fzf.lsp_declarations, {
            desc = "[G]o to [D]eclaration",
        })
        vim.keymap.set("n", "<leader>gr", fzf.lsp_references, {
            desc = "[G]o to [R]eferences",
        })

        -- Format
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {
            desc = "[F]ormat",
        })
    end
}
