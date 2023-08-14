require("bootstrap")

local opt = vim.opt
local g = vim.g

-- Misc
opt.laststatus = 3
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true

-- Line Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = true
opt.colorcolumn = "100"

-- Display
opt.signcolumn ="yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 500
opt.undofile = true

-- Swap file flush interval
opt.updatetime = 250

-- disable some default providers
for _, provider in ipairs { "perl", "python3", "ruby" } do
  g["loaded_" .. provider .. "_provider"] = 0
end

-- Set Leader Key
g.mapleader = " "

require("plugins")
