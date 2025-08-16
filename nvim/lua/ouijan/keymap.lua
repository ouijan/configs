-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'", { desc = "Move selection up" })

-- Nav keeping view centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "1/2 page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "1/2 page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next match" })
vim.keymap.set("n", "N", "nzzzv", { desc = "Previous match" })

vim.keymap.set("n", "<C-n>", "<cmd>bnext<CR>", {
	desc = "Jump to next buffer",
})
vim.keymap.set("n", "<C-p>", "<cmd>bprev<CR>", {
	desc = "Jump to previous buffer",
})

vim.keymap.set("n", "<leader>dp", function()
	vim.diagnostic.goto_prev()
end, { desc = "Diagnostic Previous" })

vim.keymap.set("n", "<leader>dn", function()
	vim.diagnostic.goto_next()
end, { desc = "Diagnostic Next" })

vim.keymap.set("n", "<leader>dk", function()
	vim.diagnostic.open_float()
end, { desc = "Diagnostic Inspect" })

vim.keymap.set("n", "<leader>rn", function()
	vim.lsp.buf.rename()
end, { desc = "Rename Symbol" })

vim.keymap.set("n", "<leader>sn", function()
	require("noice").cmd("pick")
end, { desc = "Search Notifications" })
