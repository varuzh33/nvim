return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- you need to install those using Mason
				lua = { "stylua" },
				json = { "jq" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				javascript = {},
				--sql = { "sqlfmt" },
				--typescript = { "prettier" },
				--css = { "prettier" },
				--html = { "prettier" },
				--yaml = { "prettier" },
			},

			formatters = {
				["clang-format"] = {
					args = {
						"--style={BasedOnStyle: LLVM, IndentWidth: 4, UseTab: Never}",
					},
				},
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
