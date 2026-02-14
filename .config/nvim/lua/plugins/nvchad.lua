return {
  -- NvChad UI
  {
    "nvchad/ui",
    lazy = false,
    config = function()
      require("nvchad")
    end,
  },

  -- Base46 theming
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  -- Volt (theme switcher UI)
  { "nvchad/volt", lazy = true },

  -- base46 themes bufferline via its integration
  { "akinsho/bufferline.nvim", enabled = true },
}
