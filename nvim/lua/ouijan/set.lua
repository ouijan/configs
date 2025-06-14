
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true

-- loaders
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "/Users/tobyharris/.pyenv/versions/nvim3/bin/python"

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

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
vim.opt.clipboard = "unnamedplus"


end)
