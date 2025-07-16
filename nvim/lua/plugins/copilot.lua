return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		keymap = {
			{
				"i",
				"<Tab>",
				function()
					if require("copilot.suggestion").is_visible() then
						require("copilot.suggestion").accept()
					else
						vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
					end
				end,
				desc = "Accept Copilot suggestion, or regular tab",
				silent = true,
			},
		},
		opts = {
			copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.11.0/bin/node",
			suggestion = {
				enabled = true,
				auto_trigger = true,
				accept = false,
				-- 	-- debounce = 75,
				keymap = {
					accept = "<Tab>",
				},
			},
			-- panel = { enabled = false },
		},

		config = function(_, opts)
			require("copilot").setup(opts)
			local cp = require("catppuccin.palettes").get_palette("mocha")

			vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = cp.surface2, italic = true, blend = 10 })
			-- vim.api.nvim_set_hl(0, "CopilotPanel", { fg = "#D4D4D4", bg = "#1E1E1E" })
		end,
	},

	-- {
	--     "olimorris/codecompanion.nvim",
	--     keys = {
	--         -- { "<leader>ai", "<cmd>CodeCompanion<cr>",        desc = "AI Inline" },
	--         -- { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>",  desc = "AI Chat" },
	--         -- { "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "AI Actions" },
	--     },
	--     opts = {
	--         display = {
	--             chat = {
	--                 window = {
	--                     position = "right",
	--                 },
	--             },
	--         },
	--     },
	--     dependencies = {
	--         "nvim-lua/plenary.nvim",
	--         "nvim-treesitter/nvim-treesitter",
	--     },
	-- },
}
