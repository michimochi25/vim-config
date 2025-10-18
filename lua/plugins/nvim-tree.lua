return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}

    -- Auto-open nvim-tree when opening a file
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function(data)
        -- Open nvim-tree if opening a file
        if vim.fn.isdirectory(data.file) == 1 then
          -- Opening a directory
          require("nvim-tree.api").tree.open()
        elseif data.file ~= "" then
          -- Opening a file
          require("nvim-tree.api").tree.open()
        end
      end
    })

    -- Auto-open when opening a new tab
    vim.api.nvim_create_autocmd("TabEnter", {
      callback = function()
        require("nvim-tree.api").tree.open()
      end
    })
  end,
}
