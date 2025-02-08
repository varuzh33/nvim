-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Better window navigation
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "#", "#zz")

-- Moving selected visual lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Void register
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Source nvim config file
--vim.keymap.set("n", "<leader><leader>", function()
--	vim.cmd("so")
--end)

-- Diagnostics
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_next()
end)
vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_prev()
end)

-- Quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Horizontal scroll (cringe remaps)
vim.keymap.set("n", "<C-1>", "35z<Left>")
vim.keymap.set("n", "<C-2>", "35z<Right>")

-- Close current split
--vim.keymap.set("n", "<leader>ms", "<cmd>close<CR>")
vim.keymap.set("n", "<leader>ms", function()
    vim.cmd("close")
end)

-- Experemental keymap
vim.keymap.set("n", "<leader>lf", function()
    print(tostring(vim.api.nvim_get_current_line()))
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Native spell checking
vim.keymap.set("n", "<leader>ns", function()
    vim.cmd("set spell")
end)

vim.keymap.set("n", "<leader>ne", function()
    vim.cmd("set nospell")
end)
