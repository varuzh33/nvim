return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"go",
				"javascript",
				"typescript",
				"jsdoc",
				"bash",
				"json",
				"rust",
				"sql",
				"http",
			},

			auto_install = true,
			sync_install = false,

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			},
		})
	end,
}
