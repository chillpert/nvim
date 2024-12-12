return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.comment').setup()
      require('mini.tabline').setup()
      require('mini.statusline').setup()
      require('mini.notify').setup()
      require('mini.icons').setup()
    end,
  },
}
