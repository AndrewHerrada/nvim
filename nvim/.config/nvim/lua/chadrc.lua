---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "solarized_osaka",

  hl_override = {
    ["@keyword.conditional"] = { italic = true },
    ["@keyword.repeat"] = { italic = true },
    ["@function"] = { bold = true },
  },
}

M.ui = {
  statusline = {
    theme = "default",
  },
  tabufline = {
    enabled = false,
  },
}

-- Disable NvChad's LSP signature (noice.nvim handles it)
M.lsp = { signature = false }

return M
