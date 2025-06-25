return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		keys = {
			{
				"K",
				function()
					vim.lsp.buf.hover()
				end,
				desc = "Show LSP Hover",
			},
		},
		opts = {},
	},
}
