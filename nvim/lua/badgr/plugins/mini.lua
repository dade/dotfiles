return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup()
		require("mini.move").setup()
		require("mini.surround").setup()
		require("mini.splitjoin").setup()
		require("mini.pairs").setup()
		require("mini.animate").setup()
		require("mini.cursorword").setup()
		require("mini.indentscope").setup()

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		require("mini.starter").setup()
	end,
}
