return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})

		-- Two important keymaps to use while in Telescope are:
		--  - Insert mode: <c-/>
		--  - Normal mode: ?
		--  They show help menu
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>pf", builtin.find_files)
		vim.keymap.set("n", "<leader>ps", builtin.live_grep)
		vim.keymap.set("n", "<leader>pr", builtin.resume)
		vim.keymap.set("n", "<leader>vh", builtin.help_tags)
		vim.keymap.set("n", "<C-p>", builtin.git_files)
	end,
}
