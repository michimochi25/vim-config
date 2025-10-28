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
				file_ignore_patterns = {
					"node_modules",
					"%.env",
					"%.lock",
					"%.sql",
					"%.git/",
					"^venv/", -- Ignores a folder named 'venv' at the root
					"^.venv/", -- Ignores a folder named '.venv' at the root
					"^env/", -- Ignores a folder named 'env' at the root
					"^.env/", -- Ignores a folder named '.env' at the root
					"*/venv/", -- Ignores any 'venv' folder within subdirectories
					"*/.venv/", -- Ignores any '.venv' folder within subdirectories
				},
			},
		})
		-- Keymaps
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
	end,
}
