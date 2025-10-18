return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		-- Setup telescope ONCE with all configurations
		telescope.setup({})
		-- Keymaps
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
	end,
}
