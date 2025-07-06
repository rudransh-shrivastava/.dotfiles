return {
	"rose-pine/neovim",
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("rose-pine").setup({
			styles = {
				comments = { italic = false }, -- Disable italics in comments
			},
		})

		vim.cmd.colorscheme("rose-pine")
	end,
}
