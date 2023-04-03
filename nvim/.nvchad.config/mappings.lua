local M = {}

local options = { noremap = true }
vim.keymap.set("n", "J", "2j", options)
vim.keymap.set("n", "K", "2k", options)

M.disabled = {
  n = {
      ["K"] = ""
  }
}

M.abc = {
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } }
  }
}

return M
