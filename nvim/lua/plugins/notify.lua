return {
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		opts = {
			render = "minimal",
			stages = "fade",
			max_width = 50,
		},
		keys = {
			-- {
			-- 	"<leader>n",
			-- 	function()
			-- 		vim.cmd("Notifications")
			-- 	end,
			-- 	desc = "Notifications",
			-- },
			-- { "Notifications<leader>n",  group = "Notifications" },
			-- { "<leader>nd", function() Snacks.notifier.hide() end,         desc = "Dismiss Notifications" },
			-- { "<leader>nh", function() Snacks.notifier.show_history() end, desc = "Show Notification History" },
		},
		config = function(_, opts)
			local notify = require("notify")
			notify.setup(opts)
			vim.notify = notify
		end,
	},
	-- {
	-- 	"mrded/nvim-lsp-notify",
	-- 	dependencies = { "rcarriga/nvim-notify" },
	-- 	opts = {},
	-- },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			-- "rcarriga/nvim-notify",
		},
		opts = {},
	},
}
