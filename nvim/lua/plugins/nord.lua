return {
	"shaunsingh/nord.nvim",
	config = function()
		local nord = require("nord")

		vim.g.nord_disable_background = true
		-- vim.g.nord_contrast = true
		-- vim.g.nord_cursorline_transparent = false
		-- vim.g.nord_enable_sidebar_background = true
		vim.g.nord_bold = false

		nord.set()

		-- vim.api.nvim_set_hl(0, 'Normal', {
		--     bg = 'none',
		-- })
		--
		-- vim.api.nvim_set_hl(0, 'NormalFloat', {
		--     bg = '#3b4252',
		-- })
		-- vim.api.nvim_set_hl(0, 'FloatTitle', {
		--     bg = '#3b4252',
		--     fg = '#88c0d0',
		--     bold = true,
		-- })
		-- vim.api.nvim_set_hl(0, 'FloatBorder', {
		--     bg = '#3b4252',
		-- })
		--
		-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		--     vim.lsp.handlers.hover,
		--     {
		--         border = "single" -- options: "single", "double", "rounded", "solid", "shadow", or custom table
		--     }
		-- )
	end,
}
