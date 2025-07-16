vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.termguicolors = true
vim.g.have_nerd_font = true
-- vim.g.winborder = "solid"

-- loaders
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "~/.pyenv/versions/nvim3/bin/python"
-- vim.g.node_host_prog = "~/.nvm/versions/node/v22.11.0/bin/neovim-node-host"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrap
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- terminal
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	virtual_lines = { current_line = true },
	signs = true,
	severity_sort = true,
	float = true,
})

vim.o.pumheight = 10
-- vim.o.pummaxwidth = 10010
-- vim.o.pumwidth = 10

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
