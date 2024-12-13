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

-- Fix copy/yank on WSL
if vim.fn.has 'wsl' == 1 then
  vim.api.nvim_create_autocmd('TextYankPost', {

    group = vim.api.nvim_create_augroup('Yank', { clear = true }),

    callback = function()
      vim.fn.system('clip.exe', vim.fn.getreg '"')
    end,
  })
end

autocmd('BufEnter', {
  desc = 'Enable spell checking on specific filetypes',
  group = general,
  callback = function()
    vim.opt_local.spell = true
  end,
  pattern = { '*.md', '*.txt' },
})
