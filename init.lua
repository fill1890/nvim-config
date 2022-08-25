local cmd = vim.api.nvim_command
local remap = vim.api.nvim_set_keymap

-- Plugins

-- other plugins
require 'packer_init'.setup()

-- Imports

require 'keys'
require 'opts'

-- Commands

-- 256 colour
cmd('set t_Co=256')

-- highlight extra whitespace on a line
cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
cmd([[match ExtraWhitespace /\s\+$/]])

-- highlight characters past a certain length
cmd('highlight ColorColumn ctermbg=168')
-- italic comments
cmd('highlight Comment cterm=italic')

-- help in a vertical window
cmd([[autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif]])

-- vim:foldmethod=marker:foldlevel=0
