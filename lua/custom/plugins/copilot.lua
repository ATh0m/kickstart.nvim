local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  dependencies = {
    "zbirenbaum/copilot-cmp",
  },
}

function M.config()
  require("copilot").setup {
    panel = { enabled = false },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<c-l>",
        next = "<c-j>",
        prev = "<c-k>",
        dismiss = "<c-h>",
      },
    },
    filetypes = {
      markdown = true,
      gitcommit = true,
      help = true,
    },
    copilot_node_command = "node",
  }

  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "<c-s>", ":lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
end

return M
