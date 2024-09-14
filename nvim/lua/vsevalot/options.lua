-- enable nubers and activate relative numbers
vim.opt.number = true
vim.opt.relativenumber = true


vim.opt.splitbelow = true -- change horizontal split to spawn new split below 
vim.opt.splitright = true -- change vertical split to spawn new split on the right

vim.opt.wrap = false
vim.opt.textwidth = 0
vim.o.textwidth = 0
vim.opt.tw = 0
vim.o.tw = 0

vim.opt.expandtab = true  -- change tabs to spaces
vim.opt.tabstop = 4  -- sets tab's length
vim.opt.shiftwidth = 4  -- sets shit's length (> or <)

vim.opt.clipboard = "unnamedplus"  -- use system buffer in nvim (cmd + c)

-- this option breaks mouse a little
vim.opt.scrolloff = 5 -- keep screen in the middle when scrolling instead of going all way to the bottom


vim.opt.virtualedit = "block"  -- allow VISUAL BLOCK mode to select ares without any characters

vim.opt.inccommand = "split"  -- preview of replace in the split

vim.opt.ignorecase = true  -- case insesetive autocomplete for commands

vim.opt.termguicolors = true  -- allow to use all system colors

vim.g.mapleader = " "

vim.opt.updatetime = 100
