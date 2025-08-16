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
				debounce = 50,
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
	{
		"MeanderingProgrammer/render-markdown.nvim", -- Make Markdown buffers look beautiful
		ft = { "markdown", "codecompanion" },
		opts = {},
	},
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			{
				"<leader>ac",
				"<cmd>CodeCompanionChat Toggle<CR>",
				desc = "AI Chat",
			},
			{
				"<leader>ai",
				function()
					-- Use vim.ui.input for a better UI experience
					vim.ui.input({ prompt = "Prompt: " }, function(prompt)
						if prompt and prompt ~= "" then
							vim.cmd("CodeCompanion /buffer " .. prompt)
							OuijanUtils.set_normal_mode()
						end
					end)
				end,
				mode = { "n", "v" },
				desc = "AI Inline",
			},
			{
				"<leader>aa",
				"<cmd>CodeCompanionActions<CR>",
				desc = "AI Actions",
			},
		},
		opts = {
			display = {
				chat = {
					window = {
						position = "right",
						border = "none",
						width = 0.40,
					},
				},
			},
			extensions = {
				mcphub = {
					callback = "mcphub.extensions.codecompanion",
					opts = {
						-- MCP Tools
						make_tools = true, -- Make individual tools (@server__tool) and server groups (@server) from MCP servers
						show_server_tools_in_chat = true, -- Show individual tools in chat completion (when make_tools=true)
						add_mcp_prefix_to_tool_names = false, -- Add mcp__ prefix (e.g `@mcp__github`, `@mcp__neovim__list_issues`)
						show_result_in_chat = true, -- Show tool results directly in chat buffer
						format_tool = nil, -- function(tool_name:string, tool: CodeCompanion.Agent.Tool) : string Function to format tool names to show in the chat buffer
						-- MCP Resources
						make_vars = true, -- Convert MCP resources to #variables for prompts
						-- MCP Prompts
						make_slash_commands = true, -- Add MCP prompts as /slash commands
					},
				},
			},
		},
	},
	{
		"ravitemer/mcphub.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
		keys = {
			{
				"<leader>am",
				"<cmd>MCPHub<CR>",
				desc = "AI MCP Hub Manager",
			},
		},
		config = function()
			require("mcphub").setup({
				global_env = {
					ALLOWED_DIRECTORY = vim.fn.getcwd(),
				},
			})
		end,
	},
}
