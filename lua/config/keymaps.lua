vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format current file" })
