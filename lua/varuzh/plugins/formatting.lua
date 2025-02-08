return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				--javascript = { "prettier" },
				lua = { "stylua" },
				--sql = { "sqlfmt" },
				--css = { "prettier" },
				--html = { "prettier" },
				json = { "jq" },
				--yaml = { "prettier" },
				--typescript = { "prettier" },
				sql = { "sqlfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
				async = false,
			},
		})

		vim.keymap.set("n", "<leader>mp", function()
			require("conform").format({
				timeout_ms = 500,
				lsp_format = "fallback",
				async = false,
			})
		end)
	end,
}
