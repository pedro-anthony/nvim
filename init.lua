-- Neovim API aliases
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- Plugins
local Plug = fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'github/copilot.vim'
--Plug 'ojroques/nvim-hardline'
-- trying out vim-airline
Plug 'vim-airline/vim-airline'
Plug 'andweeb/presence.nvim'
Plug 'preservim/nerdtree'
Plug 'ms-jpq/chadtree'
Plug 'lambdalisue/suda.vim'

vim.call('plug#end')

-- Keybindings
require('keybinds')

-- Grab settings
require('settings')

-- Enable hardline (not in use)
-- require('hardline').setup {}

-- Set up presence
require("presence"):setup({
    -- General options
    auto_update         = true,
    enable_line_number  = true,
})
