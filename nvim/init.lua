require("psyduck")
require("config.lazy")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = {
    prefix = "■",
    spacing = 2,
  },
  update_in_insert = true,
})
