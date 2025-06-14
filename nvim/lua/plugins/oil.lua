return { 
	'stevearc/oil.nvim',
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{ "<leader>-", "<CMD>Oil --float<CR>", desc = "Open parent directory" },
	},
	lazy = false,
}
