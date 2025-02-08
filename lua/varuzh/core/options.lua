--
vim.g.netrw_banner = 0
vim.g.netrw_vinsise = 25
vim.g.netrw_browse_split = 0

-- Make line numbers default and add relative line numbers (for jumping)
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Sync clipboard between OS and Neovim
vim.opt.clipboard:append("unnamedplus")

-- Disable line wrap
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true -- ignore case when searching

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Enable column with error signs (important for LSP)
vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- For <C-v> block visual mode
vim.opt.virtualedit = "block"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
