local km = vim.keymap

km.set("n", "<leader>nh", "<cmd>nohl<CR>")
km.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
km.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
km.set("n", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
km.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
km.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
km.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
km.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

km.set("n", "oo", "o<Esc><S-o>")
km.set("n", "<S-o><S-o>", "o<Esc><S-o>")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
