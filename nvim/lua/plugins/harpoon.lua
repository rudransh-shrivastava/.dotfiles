return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
			},
		})

		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		map("n", "<leader>a", function()
			harpoon:list():append()
		end, opts)

		map("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, opts)

		map("n", "<C-h>", function()
			harpoon:list():select(1)
		end, opts)

		map("n", "<C-j>", function()
			harpoon:list():select(2)
		end, opts)

		map("n", "<C-k>", function()
			harpoon:list():select(3)
		end, opts)

		map("n", "<C-l>", function()
			harpoon:list():select(4)
		end, opts)
	end,
}
