return {

	{ "Bilal2453/luvit-meta", lazy = true },

	-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
	-- used for completion, annotations and signatures of Neovim apis
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = { -- Load luvit types when the `vim.uv` word is found
				{
					path = "luvit-meta/library",
					words = { "vim%.uv" },
				},
			},
		},
	},

	-- Main LSP Configuration
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Mason LSP Manager
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			-- Extras
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
				-- NOTE: Add & Configure LSP servers
				lua_ls = {
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
							diagnostics = { disabled = { "missing-fields" } },
						},
					},
				},
				-- clangd = {},
				gopls = {},
				-- pyright = {},
			},
			tools = {
				-- NOTE: Add other tools (formatters/linters) to be installed
				"stylua",
			},
		},
		config = function(_, opts)
			-- NOTE: Attach LSP Autocommand
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
				callback = function(event)
					-- NOTE: Helper method for defining LSP keybindings
					local map = function(keys, func, desc, mode)
						mode = mode or "n"
						vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end

					-- NOTE: LSP: Keybindings

					-- Jump to the definition of the word under your cursor. To jump back, press <C-t>.
					map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")

					-- Find references for the word under your cursor.
					map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")

					-- Jump to the implementation of the word under your cursor.
					map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")

					-- Jump to the type of the word under your cursor.
					map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")

					-- Fuzzy find all the symbols in your current document.
					map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")

					-- Fuzzy find all the symbols in your current workspace.
					map(
						"<leader>ws",
						require("telescope.builtin").lsp_dynamic_workspace_symbols,
						"[W]orkspace [S]ymbols"
					)

					-- Rename the variable under your cursor.
					map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

					-- Execute a code action, usually your cursor needs to be on top of an error
					-- or a suggestion from your LSP for this to activate.
					map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })

					-- WARN: This is not Goto Definition, this is Goto Declaration.
					--  For example, in C this would take you to the header.
					map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
				end,
			})

			-- NOTE: Mason Setup
			require("mason").setup()

			-- NOTE: Mason Installer
			local ensure_installed = vim.tbl_keys(opts.servers or {})
			vim.list_extend(ensure_installed, opts.tools or {})
			require("mason-tool-installer").setup({
				ensure_installed = ensure_installed,
			})

			-- NOTE: Setting capabilities
			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						local server = opts.servers[server_name] or {}
						server.capabilities = require("blink.cmp").get_lsp_capabilities(server.capabilities)
						require("lspconfig")[server_name].setup(server)
					end,
				},
			})
		end,
	},
}
