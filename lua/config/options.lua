-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs and indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.splitright = true -- All vertical splits open on right
vim.opt.splitbelow = true -- All horizontal splits open below

if vim.fn.has("win32") == 1 then
	vim.opt.shell = "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
	vim.opt.shellcmdflag = "-NoProfile -ExecutionPolicy RemoteSigned -Command"
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
end

vim.opt.termguicolors = true
