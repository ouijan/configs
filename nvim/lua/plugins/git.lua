return {
	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gs", "<cmd>Git<cr>", desc = "Git Status" },
			{ "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
			-- { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
		},
	},
	{
		"sindrets/diffview.nvim",
		keys = {
			{
				"<leader>gd",
				function()
					vim.cmd("DiffviewOpen")
					vim.cmd("tabclose #")
				end,
				desc = "Git Diff",
			},
			{ "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Git File History" },
		},
		config = function()
			local actions = require("diffview.actions")

			require("diffview").setup({
				keymaps = {
					file_panel = {
						{
							"n",
							"<C-n>",
							actions.select_next_entry,
							{ desc = "Open the diff for the next file" },
						},
						{
							"n",
							"<C-p>",
							actions.select_prev_entry,
							{ desc = "Open the diff for the previous file" },
						},
						{
							"n",
							"<cr>",
							function()
								actions.goto_file()
								vim.cmd("tabclose #")
							end,
							{ desc = "Open the diff for the previous file" },
						},
						{
							"n",
							"gf",
							function()
								actions.goto_file()
								vim.cmd("tabclose #")
							end,
							{ desc = "Open the file" },
						},
						{
							"n",
							"q",
							function()
								actions.goto_file()
								vim.cmd("tabclose #")
							end,
							{ desc = "Quit" },
						},
					},
				},
			})
		end,
	},
}
