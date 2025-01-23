return {
	-- Detect tabstop and shiftwidth automatically
	{ "tpope/vim-sleuth" },

	-- Add Transparent Background
	-- { "xiyaowong/transparent.nvim", lazy = false },

	-- Theme
	{
		"shaunsingh/nord.nvim",
		config = function()
			vim.g.nord_disable_background = true
			vim.g.nord_cursorline_transparent = true

			require("nord").set()
			vim.cmd([[colorscheme nord]])
		end,
	},
}
