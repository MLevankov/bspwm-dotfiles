local Plug = vim.fn["plug#"]

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.showmode = false

vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("i", "<Left>", "<Nop>")
vim.keymap.set("i", "<Right>", "<Nop>")
vim.keymap.set("i", "<Up>", "<Nop>")
vim.keymap.set("i", "<Down>", "<Nop>")
vim.keymap.set("v", "<Left>", "<Nop>")
vim.keymap.set("v", "<Right>", "<Nop>")
vim.keymap.set("v", "<Up>", "<Nop>")
vim.keymap.set("v", "<Down>", "<Nop>")

vim.call("plug#begin")

Plug("https://github.com/folke/tokyonight.nvim")
Plug("https://github.com/nvim-lualine/lualine.nvim")

vim.call("plug#end")

vim.cmd[[colorscheme tokyonight-night]]

require("lualine").setup({
  options = {
    theme = "tokyonight-night",
    component_separators = "",
    section_separators = ""
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {"encoding"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  }
})
