return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    styles = {
      functions = { bold = true },
    },
    on_highlights = function(hl, c)
      hl["@keyword.conditional"] = { fg = c.cyan, italic = true }
      hl["@keyword.repeat"] = { fg = c.cyan, italic = true }
    end,
    --transparent = true,
  },
}
