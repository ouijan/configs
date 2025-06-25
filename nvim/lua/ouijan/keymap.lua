-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'", { desc = "Move selection up" })

-- Nav keeping view centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "1/2 page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "1/2 page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next match" })
vim.keymap.set("n", "N", "nzzzv", { desc = "Previous match" })

-- Window Management
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', {
--     desc = 'Move focus to the left window'
-- })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', {
--     desc = 'Move focus to the right window'
-- })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', {
--     desc = 'Move focus to the lower window'
-- })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', {
--     desc = 'Move focus to the upper window'
-- })
