local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

-- General Settings
g.python3_host_prog = 'python3'
opt.mouse = 'a'
opt.swapfile = false
opt.clipboard = 'unnamedplus'

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

-- Enable smart editing (suda)
g.suda_smart_edit = 1

-- Disable nvim intro
opt.shortmess:append "sI"
