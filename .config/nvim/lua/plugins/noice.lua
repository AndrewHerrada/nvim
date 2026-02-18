return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.presets.lsp_doc_border = true
    -- noice calls the hover handler once per LSP client, causing "No information
    -- available" to appear multiple times when several clients (e.g. ts_ls +
    -- tailwindcss) are attached. silent = true restores the old behaviour where
    -- pressing K with no hover info shows nothing.
    opts.lsp = vim.tbl_deep_extend("force", opts.lsp or {}, {
      hover = { silent = true },
    })
  end,
}
