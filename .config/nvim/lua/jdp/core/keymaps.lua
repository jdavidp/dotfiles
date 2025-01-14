vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split current buffer vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split current buffer horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Below is an alternative way of doing splits (this opens telescope in the new split)

-- keymap.set("n", "<leader>sv", function()
-- 	vim.cmd("vsplit")
-- 	vim.cmd("wincmd l")
-- 	require("telescope.builtin").find_files()
-- end, { desc = "Vertical split with a new file" })
-- keymap.set("n", "<leader>sh", function()
-- 	vim.cmd("split")
-- 	vim.cmd("wincmd j")
-- 	require("telescope.builtin").find_files()
-- end, { desc = "Horizontal split with a new file" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
