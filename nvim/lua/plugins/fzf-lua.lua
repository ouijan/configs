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
				"<leader>sF",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "Search Grep",
			},
			{
				"<leader>sg",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "Search Grep",
			},
			{
				"<leader>sd",
				function()
					require("fzf-lua").git_diff()
				end,
				desc = "Search Git Diff",
			},
			{
				"<leader>sD",
				function()
					require("fzf-lua").grep({
						raw_cmd = [[git status -su | rg "^\s*M" | cut -d ' ' -f3 | xargs rg --hidden --column --line-number --no-heading --color=always  --with-filename -e '']],
					})
				end,
				desc = "Search Git Diff",
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
				"<leader>cs",
				function()
					require("fzf-lua").lsp_document_symbols()
				end,
				desc = "Code Symbols Document",
			},
			{
				"<leader>cS",
				function()
					require("fzf-lua").lsp_live_workspace_symbols()
				end,
				desc = "Code Symbols Workspace",
			},
			{
				"<leader>cd",
				function()
					require("fzf-lua").lsp_definitions()
				end,
				desc = "Go to Definition",
			},
			{
				"<leader>cD",
				function()
					require("fzf-lua").lsp_declarations()
				end,
				desc = "Go to Declaration",
			},
			{
				"<leader>cr",
				function()
					require("fzf-lua").lsp_references()
				end,
				desc = "Go to References",
			},

			-- Diagnostics
			{
				"<leader>dd",
				function()
					require("fzf-lua").diagnostics_document()
				end,
				desc = "Diagnostics for Document",
			},
			{
				"<leader>dw",
				function()
					require("fzf-lua").diagnostics_workspace()
				end,
				desc = "Diagnostics for Workspce",
			},

			-- Quickfix
			{
				"<leader>q",
				function()
					require("fzf-lua").quickfix()
				end,
				desc = "Quickfix List",
			},
		},
		opts = {
			-- "borderless",
			-- "border-fused",
			"hide", -- fix for resume
			defaults = {
				-- previewer = true,
				formatter = "path.filename_first",
				winopts = {
					-- border = "none",
					height = 1,
					width = 1,
					preview = {
						-- horizontal = "right:50%",
					},
				},
			},
			git = {
				diff = {
					formatter = false,
					-- previewer = "builtin",
					-- preview = "git diff {ref} {file}",
					-- preview_pager = true,
				},
			},
			lsp = {
				code_actions = {
					previewer = false,
				},
			},
			winopts = {
				border = "solid",
				preview = {
					-- 	-- 	title = false,
					border = "solid",
					scrollbar = "float",
				},
			},
			hls = {
				normal = "NormalFloat",
				border = "NormalFloat",
				preview_normal = "Normal",
				preview_border = "Normal",
			},
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
