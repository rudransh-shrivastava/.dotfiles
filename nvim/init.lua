require("psyduck")
require("config.lazy")


vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.diagnostic.config({
  virtual_text = {
    prefix = "■",
    spacing = 2,
  },
  update_in_insert = true,
})
