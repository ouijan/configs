return {
	{

		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"rust",
					"cpp",
					"html",
					"javascript",
					"typescript",
					"css",
					"latex",
					"norg",
					"svelte",
					"typst",
					"vue",
					"markdown",
					"markdown_inline",
				},
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			-- separator = "-",
		},
	},
}
