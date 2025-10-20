return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		-- Setup telescope ONCE with all configurations
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<CR>"] = require("telescope.actions").select_tab,
					},
					n = {
						["<CR>"] = require("telescope.actions").select_tab,
					},
				},
			},
		})
		-- Keymaps
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
	end,
}
