return {
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		opts = {
			render = "minimal",
			stages = "fade",
			max_width = 50,
			background_colour = "#000000",
		},
		config = function(_, opts)
			local notify = require("notify")
			notify.setup(opts)
			vim.notify = notify
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			-- "rcarriga/nvim-notify",
		},
		opts = {
			presets = {
				lsp_doc_border = true,
			},
			lsp = {
				documentation = {
					opts = {
						border = {
							style = "none",
							padding = { 1, 2 },
						},
					},
				},
			},
			views = {
				cmdline_popup = {
					position = {
						row = 5,
						col = "50%",
					},
					size = {
						width = 60,
						height = "auto",
					},
					border = {
						style = "none",
						padding = { 1, 2 },
					},
					win_options = {
						winhighlight = { NormalFloat = "NormalFloat", FloatBorder = "FloatBorder" },
					},
				},
				popupmenu = {
					backend = "cmp",
					relative = "editor",
					position = {
						row = 8,
						col = "50%",
					},
					size = {
						width = 60,
						height = 10,
					},
					border = {
						style = "none",
						padding = { 1, 2 },
					},
					win_options = {
						winhighlight = { Normal = "NormalFloat", FloatBorder = "FloatBorder" },
					},
				},
			},
		},
	},
}
