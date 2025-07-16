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
						reveal_file = OuijanUtils.get_current_path(),
					})
				end,
				desc = "Open File Explorer",
			},
			{
				"<leader>e",
				function()
					require("neo-tree.command").execute({
						action = "focus",
						source = "filesystem",
						position = "current",
						reveal_file = OuijanUtils.get_current_path(),
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
						reveal_file = OuijanUtils.get_current_path(),
					})
				end,
				desc = "Reveal current file in the Explorer",
			},
		},
		opts = {
			-- fill any relevant options here
			window = {
				width = 55,
				-- position = "float",
				-- popup = { -- settings that apply to float position only
				-- 	size = { height = "95%", width = "95%" },
				-- 	position = "50%", -- 50% means center it
				-- },
			},
			sources = {
				"filesystem",
				"git_status",
			},
			source_selector = {
				winbar = true,
			},
			default_component_configs = {
				git_status = {
					symbols = {
						-- Change type
						added = "+", -- NOTE: you can set any of these to an empty string to not show them
						deleted = "d",
						modified = "m",
						renamed = "r",
						-- Status type
						untracked = "?",
						ignored = "",
						unstaged = "u",
						staged = "s",
						conflict = "c",
					},
					align = "right",
				},
			},
		},
	},
}
