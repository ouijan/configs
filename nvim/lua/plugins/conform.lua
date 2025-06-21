return {
    'stevearc/conform.nvim',
    opts = {
        -- format_on_save = {
        --     lsp_fallback = true,
        --     timeout_ms = 1000,
        -- },
        formatters_by_ft = {
            lua = { 'stylua' },
            javascript = { 'prettierd' },
            typescript = { 'prettierd' },
            html = { 'prettierd' },
            htmlangular = { 'prettierd' },
            css = { 'prettierd' },
            scss = { 'prettierd' },
            json = { 'prettierd' },
            markdown = { 'prettierd' },
            -- go = { 'gofumpt' },
        },
    },
}
