return {
  { -- Add indentation guides even on blank lines (the vertical lines)
    'lukas-reineke/indent-blankline.nvim',
    cond = not vim.g.vscode,
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
