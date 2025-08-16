return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			transparent_background = false,
			integrations = {
				fzf = true,
				mason = true,
				cmp = true,
				noice = true,
				mini = {
					enabled = true,
					indentscope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
				},
				neotree = true,
				notify = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
						ok = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
						ok = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				snacks = {
					enabled = true,
				},
				treesitter_context = true,
				treesitter = true,
				which_key = true,
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
			local macchiato = require("catppuccin.palettes").get_palette("macchiato")

			vim.api.nvim_set_hl(
				0,
				"DiagnosticUnderlineError",
				{ fg = macchiato.red, underline = false, undercurl = true }
			)
			vim.api.nvim_set_hl(
				0,
				"DiagnosticUnderlineWarn",
				{ fg = macchiato.yellow, underline = false, undercurl = true }
			)
			vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = false, undercurl = true })
			vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = false, undercurl = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { underline = false, undercurl = true })

			vim.api.nvim_set_hl(0, "ColorColumn", { bg = macchiato.mantle, fg = macchiato.surface2 })
			--
			-- vim.cmd([[
			--              hi TreesitterContextBottom gui=underline guisp=Grey
			--              hi TreesitterContextLineNumberBottom gui=underline guisp=Grey
			--          ]])
			-- vim.api.nvim_set_hl(0, "TreesitterContextBottom", { gui = "underline", guisp = "Grey" })
			-- vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { gui = "underline", guisp = "Grey" })

			-- -- Customization for Pmenu
			-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#282C34", fg = "NONE" })
			-- vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C5CDD9", bg = "#22252A" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#7E8294", bg = "NONE", strikethrough = true })
			-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#82AAFF", bg = "NONE", bold = true })
			-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#82AAFF", bg = "NONE", bold = true })
			-- vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#C792EA", bg = "NONE", italic = true })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#EED8DA", bg = "#B5585F" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#EED8DA", bg = "#B5585F" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#EED8DA", bg = "#B5585F" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#C3E88D", bg = "#9FBD73" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#C3E88D", bg = "#9FBD73" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#C3E88D", bg = "#9FBD73" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#FFE082", bg = "#D4BB6C" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#FFE082", bg = "#D4BB6C" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#FFE082", bg = "#D4BB6C" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#EADFF0", bg = "#A377BF" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#EADFF0", bg = "#A377BF" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#EADFF0", bg = "#A377BF" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#EADFF0", bg = "#A377BF" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#EADFF0", bg = "#A377BF" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#C5CDD9", bg = "#7E8294" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#C5CDD9", bg = "#7E8294" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#F5EBD9", bg = "#D4A959" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#F5EBD9", bg = "#D4A959" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#F5EBD9", bg = "#D4A959" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#DDE5F5", bg = "#6C8ED4" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#DDE5F5", bg = "#6C8ED4" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#DDE5F5", bg = "#6C8ED4" })
			--
			-- vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#D8EEEB", bg = "#58B5A8" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#D8EEEB", bg = "#58B5A8" })
			-- vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#D8EEEB", bg = "#58B5A8" })
		end,
	},
}
