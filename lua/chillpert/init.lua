require 'chillpert.options'
require 'chillpert.remap'
require 'chillpert.lazy_init'
require 'chillpert.autocommands'

-- Fix shell on Windows (when running nvim in Git Bash)
-- https://www.reddit.com/r/neovim/comments/msm95e/nvim_setup_on_windows_10/
-- vim.o.shell = '"C:\\Program Files\\Git\\bin\\bash.exe"'
if vim.fn.has 'Win32' == 1 then
  vim.cmd [[
set shellpipe=2>&1\|tee
if has('win32') || has('win64')
    set shell=sh
    set shellcmdflag=-c
    set shellquote=
    set shellxquote=
    set noshelltemp
    set shellslash

    let g:python3_host_prog = 'c:/Windows/py.exe'
    let g:loaded_python_provider = 1
endif
]]
end
