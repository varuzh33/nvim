return {
	"rest-nvim/rest.nvim",
	config = function()
		vim.keymap.set("n", "<leader>mr", "<cmd>hor Rest run<CR>")

		vim.g.rest_nvim = {
			response = {
				---Default response hooks
				---@class rest.Config.Response.Hooks
				hooks = {
					---@type boolean Decode the request URL segments on response UI to improve readability
					decode_url = true,
					---@type boolean Format the response body using `gq` command
					format = true,
				},
			},
			ui = {
				---@type boolean Whether to set winbar to result panes
				winbar = true,
				---@class rest.Config.UI.Keybinds
				keybinds = {
					---@type string Mapping for cycle to previous result pane
					prev = "H",
					---@type string Mapping for cycle to next result pane
					next = "L",
				},
			},
		}
	end,
}
