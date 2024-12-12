local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup('General Settings', { clear = true })

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text, Try it with `yap` in normal mode.',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- autocmd('BufEnter', {
--   desc = 'Enable spell checking on specific filetypes',
--   group = general,
--   callback = function()
--     vim.opt_local.spell = true
--   end,
--   pattern = { '*.md', '*.txt' },
-- })
