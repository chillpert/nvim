return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-\>]],
        size = 25,
        shade_terminals = false,
      }
    end,
  },
}
