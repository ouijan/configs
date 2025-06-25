return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false, -- neo-tree will lazily load itself
		keys = {
			{
				"<leader>-",
				function()
					require("neo-tree.command").execute({
						action = "focus",
						source = "filesystem",
						position = "float",
						reveal_file = OuijanUtils.getCurrentPath(), -- path to file or folder to reveal
					})
				end,
        				desc = "Open File Explorer",
			},

			{
				"<leader>ue",
				function()
					require("neo-tree.command").execute({
						action = "show",
						source = "filesystem",
						position = "left",
						toggle = true,
						reveal_file = OuijanUtils.getCurrentPath(), -- path to file or folder to reveal
					})
				end,
				desc = "Reveal current file in the Explorer",
			},
		},
		opts = {
			-- fill any relevant options here
		},
	},
}
