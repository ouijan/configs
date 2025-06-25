return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		-- plugins = {
		--     registers = false,
		-- },
		-- win = {
		--     width = 100,
		--     border = "solid",
		-- },
		-- layout = {
		--     width = .4,
		--     spacing = 5,
		--     -- align = "center",
		-- },
		-- wo = {
		--     winblend = 10,
		-- },
	},
	keys = {
		-- {
		--     "<leader>?",
		--     function() require("which-key").show({ global = false }) end,
		--     desc = "Buffer Local Keymaps (which-key)",
		-- },

		-- Git
		-- { "<leader>G",  group = "Git", },
		-- { "<leader>GG", function() Snacks.lazygit() end,                   desc = "Open", },
		-- { "<leader>Gf", function() Snacks.lazygit.log_file() end,          desc = "File Log", },
		-- { "<leader>Gl", function() Snacks.lazygit.log() end,               desc = "Log", },
		--

		{
			"<leader>rn",
			function()
				vim.lsp.buf.rename()
			end,
			desc = "Rename Symbol",
		},

		-- Quickfix
		-- { "<leader>q",        group = "Quickfix" },
		{
			"<leader>q",
			function()
				require("fzf-lua").quickfix()
			end,
			desc = "Quickfix List",
		},
		-- { "<leader>ql",       function() require("fzf-lua").loclist() end,                    desc = "Location List", },
		-- { "<leader>qj",       function() require("fzf-lua").jumplist() end,                   desc = "Jump List", },
		-- { "<leader>qk",       function() require("fzf-lua").keymaps() end,                    desc = "Keymaps" },
		--

		-- AI
		-- { "<leader>ai", "<cmd>CodeCompanion<cr>",                      desc = "AI Inline" },
		-- { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>",           desc = "AI Chat" },
		-- { "<leader>aa", "<cmd>CodeCompanionActions<cr>",               desc = "AI Actions" },
		--
	},
}
