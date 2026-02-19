-- base46 cache path (must be set before lazy.nvim)
vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
