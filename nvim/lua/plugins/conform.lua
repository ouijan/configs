return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = false })
			end,
			desc = "Format",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			html = { "prettierd" },
			htmlangular = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			-- go = { 'gofumpt' },
		},
	},
}
