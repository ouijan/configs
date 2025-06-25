return {
	{
		"ibhagwan/fzf-lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<leader>sf",
				function()
					require("fzf-lua").files()
				end,
				desc = "Search Files",
			},
			{
				"<leader>sg",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "Search Grep",
			},
			{
				"<leader>sm",
				function()
					require("fzf-lua").manpages()
				end,
				desc = "Search Manuals",
			},
			{
				"<leader>sc",
				function()
					require("fzf-lua").commands()
				end,
				desc = "Search Commands",
			},
			{
				"<leader>s,",
				function()
					require("fzf-lua").files({ cwd = "~/.config" })
				end,
				desc = "Search Config Files",
			},
			{
				"<leader>sr",
				function()
					require("fzf-lua").resume()
				end,
				desc = "Search Resume",
			},
			{
				"<leader><leader>",
				function()
					require("fzf-lua").buffers()
				end,
				desc = "Search open buffers",
			},
			{
				"<leader>sb",
				function()
					require("fzf-lua").builtin()
				end,
				desc = "Search Builtins",
			},

			-- Code Actions
			{
				"<leader>ca",
				function()
					require("fzf-lua").lsp_code_actions()
				end,
				desc = "Code Actions",
			},
			{
				"<leader>csd",
				function()
					require("fzf-lua").lsp_document_symbols()
				end,
				desc = "Code Symbols Document",
			},
			{
				"<leader>csw",
				function()
					require("fzf-lua").lsp_live_workspace_symbols()
				end,
				desc = "Code Symbols Workspace",
			},
			-- { "<leader>cf",       function() require("fzf-lua").lsp_finder() end,                 desc = "Code LSP Finder", },
			{
				"<leader>cdd",
				function()
					require("fzf-lua").diagnostics_document()
				end,
				desc = "Code Diagnostics for Document",
			},
			{
				"<leader>cdw",
				function()
					require("fzf-lua").diagnostics_workspace()
				end,
				desc = "Code Diagnostics for Workspce",
			},

			-- Go to
			{
				"<leader>gd",
				function()
					require("fzf-lua").lsp_definitions()
				end,
				desc = "Go to Definition",
			},
			{
				"<leader>gD",
				function()
					require("fzf-lua").lsp_declarations()
				end,
				desc = "Go to Declaration",
			},
			{
				"<leader>gr",
				function()
					require("fzf-lua").lsp_references()
				end,
				desc = "Go to References",
			},
		},
		opts = {
			-- "borderless",
			-- "max-perf",
			"hide", -- fix for resume
			-- defaults = {
			-- 	previewer = false,
			-- },
			files = {
				formatter = "path.filename_first",
				-- 	previewer = true,
			},
			-- grep = {
			-- 	previewer = true,
			-- },
			lsp = {
				code_actions = {
					previewer = false,
				},
			},
			-- winopts = {
			-- 	-- border = "solid",
			-- 	-- preview = {
			-- 	-- 	title = false,
			-- 	-- 	border = "solid",
			-- 	-- },
			-- },
			-- hls = {
			-- 	preview_normal = "NormalFloat",
			-- 	preview_border = "NormalFloat",
			-- },
			keymap = {
				fzf = {
					["ctrl-q"] = "select-all+accept",
				},
			},
		},
		config = function(_, opts)
			local fzf = require("fzf-lua")
			fzf.setup(opts)
			fzf.register_ui_select()
		end,
	},
}
