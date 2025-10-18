vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
require("config.lazy")

-- Load core config
require("config.options")
require("config.keymaps")
