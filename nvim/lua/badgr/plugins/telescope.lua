return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{
			"nvim-tree/nvim-web-devicons",
			enabled = vim.g.have_nerd_font,
		},
		"folke/todo-comments.nvim",
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod

		local trouble = require("trouble")
		local trouble_telescope = require("trouble.sources.telescope")

		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.open,
					},
				},
			},
			extensions = {
				["ui-select"] = { require("telescope.themes").get_dropdown() },
			},
		})

		pcall(require("telescope").load_extensions, "fzf")
		pcall(require("telescope").load_extensions, "ui-select")

		local builtin = require("telescope.builtin")
		local km = vim.keymap

		km.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]inder [H]elp" })
		km.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
		km.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
		km.set("n", "<leader>fs", builtin.builtin, { desc = "[F]ind [S]elect Telescope" })
		km.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind by Current [W]ord" })
		km.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
		km.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
		km.set("n", "<leader>fr", builtin.resume, { desc = "[F]ind [R]esume" })
		km.set("n", "<leader>f.", builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })

		km.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		km.set("n", "<leader>//", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })

		km.set("n", "<leader>f/", function()
			builtin.live_grep({
				grep_oepn_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[F]ind [/] in Open Files" })
	end,
}
