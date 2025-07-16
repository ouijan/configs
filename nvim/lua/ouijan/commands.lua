-- User Commands

vim.api.nvim_create_user_command("OrganiseImports", function()
	OuijanUtils.organise_imports()
end, { desc = "Sort TS imports" })

-- Auto Commands

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		OuijanUtils.format()
	end,
})
