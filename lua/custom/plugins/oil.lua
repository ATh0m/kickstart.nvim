local M = {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
  require("oil").setup {
    default_file_explorer = true,
    columns = {
      "icon",
      "size",
    },
    view_options = {
      show_hidden = true,
    },
    float = {
      max_height = 20,
      max_width = 60,
    },
  }
end

M.keys = {
  { "-", "<cmd>Oil --float<cr>", desc = "Open parent directory with Oil" },
}

return M
