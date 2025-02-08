return {
	"mistweaverco/kulala.nvim",
	config = function()
		local kulala = require("kulala")

		vim.keymap.set("n", "<leader>mr", kulala.run)

		vim.filetype.add({
			extension = {
				["http"] = "http",
			},
		})

		kulala.setup({
			winbar = true,
			default_view = "headers_body",
			split_direction = "vertical",
		})
	end,
}
