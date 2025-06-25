return {
	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		cmd = { "Copilot" },
		opts = {
			copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.11.0/bin/node",
			suggestion = {

				enabled = true,
				auto_trigger = true,
				-- debounce = 75,
				keymap = {
					accept = "<Tab>",
				},
			},
			panel = { enabled = false },
		},
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
