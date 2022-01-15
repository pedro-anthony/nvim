-- Neovim API aliases
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

-- Plugins
local Plug = fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'github/copilot.vim'
Plug 'ojroques/nvim-hardline'
Plug 'andweeb/presence.nvim'
Plug 'preservim/nerdtree'
Plug 'ms-jpq/chadtree'

vim.call('plug#end')

-- Keybindings
map('n', '<C-f>', ':CHADopen<CR>', { noremap = true })

-- General Settings
opt.mouse = 'a'
opt.swapfile = false
g.python3_host_prog = 'python3'

-- Disable unwanted providers
g.loaded_python_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- UI Tweaks
opt.number = true
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true

-- Speed Tweaks
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- Enable hardline
require('hardline').setup {}

-- Set up presence
require("presence"):setup({
    -- General options
    auto_update         = true,
    enable_line_number  = true,
})

-- Disable unwanted plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-- Disable split bar background
cmd[[highlight VertSplit cterm=NONE]]

-- Disable nvim intro
opt.shortmess:append "sI"
