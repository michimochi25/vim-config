-- Terminal keymaps

vim.keymap.set("n", "<leader>th", ":vsplit | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tv", ":split | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })

-- Move lines up and down
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up (Normal mode)" })
vim.keymap.set(
	"n",
	"<A-Down>",
	":m .+1<CR>==",
	{ noremap = true, silent = true, desc = "Move line down (Normal mode)" }
)
vim.keymap.set(
	"i",
	"<A-Up>",
	"<Esc>:m .-2<CR>==gi",
	{ noremap = true, silent = true, desc = "Move line up (Insert mode)" }
)
vim.keymap.set(
	"i",
	"<A-Down>",
	"<Esc>:m .+1<CR>==gi",
	{ noremap = true, silent = true, desc = "Move line down (Insert mode)" }
)
vim.keymap.set(
	"v",
	"<A-Up>",
	":m '<-2<CR>gv=gv",
	{ noremap = true, silent = true, desc = "Move lines up (Visual mode)" }
)
vim.keymap.set(
	"v",
	"<A-Down>",
	":m '>+1<CR>gv=gv",
	{ noremap = true, silent = true, desc = "Move lines down (Visual mode)" }
)
