return {
	{
		"mason-org/mason.nvim",
		priority = 1000,
		dependencies = {},
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				-- LSPs
				"lua-language-server",
				"gopls",
				"vtsls",
				"eslint-lsp",
				-- "html-ls",
				-- "css-language-server",
				-- "tailwindcss-language-server",
				"angular-language-server",
				"clangd",

				-- Linters
				-- "eslint_d",

				-- Formatters
				"prettierd",
				"stylua",
				"goimports",
				"golines",
				"gofumpt",
				"clang-format",

				-- DAPs
				"delve", -- Go debugger
				-- "cppdbg", -- C/C++ debugger
			},
		},
	},
}
