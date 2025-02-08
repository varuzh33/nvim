--[[
return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins

	config = function()
		require("kanagawa").setup({
			--сюда идут дополнительные найстройки
			colors = {
				palette = {
					-- change all usages of these colors
					--sumiInk3 - background color in wave colorscheme
					sumiInk3 = "#181820",
				},
			},
		})

		vim.cmd.colorscheme("kanagawa-wave")
	end,
}

]]

return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins

	config = function()
		require("gruvbox").setup({
			--сюда идут дополнительные найстройки
			contrast = "hard", -- can be "hard", "soft" or empty string
			terminal_colors = true, -- add neovim terminal colors
		})

		vim.cmd.colorscheme("gruvbox")
	end,
}

--[[
return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.sonokai_enable_italic = true
		vim.g.sonokai_style = "maia"
		vim.cmd.colorscheme("sonokai")
	end,
}
]]

--[[
return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_background = "hard"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
]]
