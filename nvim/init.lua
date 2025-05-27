require("psyduck")
require("config.lazy")

vim.diagnostic.config({
  virtual_text = {
    prefix = "■",
    spacing = 2,
  },
  update_in_insert = true,
})
