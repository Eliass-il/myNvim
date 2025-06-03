-- lua/core/options.lua

local opt = vim.opt
vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = { "wl-copy", "--foreground", "--type", "text/plain" },
    ["*"] = { "wl-copy", "--foreground", "--type", "text/plain" },
  },
  paste = {
    ["+"] = { "wl-paste", "--no-newline" },
    ["*"] = { "wl-paste", "--no-newline" },
  },
  cache_enabled = 0,
}

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.termguicolors = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.scrolloff = 8
opt.signcolumn = "yes"
