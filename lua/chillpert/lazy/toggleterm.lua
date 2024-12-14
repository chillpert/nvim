return {
  {
    'akinsho/toggleterm.nvim',
    cond = not vim.g.vscode,
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-\>]],
        size = 25,
        shade_terminals = false,
      }
    end,
  },
}
