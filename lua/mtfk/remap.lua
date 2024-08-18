
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
-- Moving select lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Jump page without moving cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Concat lines without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- search and stay in same place
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paset from void
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yank to system registry
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>qd", "mpeld bhd `ph")
vim.keymap.set("n", "<leader>q'", "mpea'<Esc>bi'<Esc>`pl")
vim.keymap.set("n", "<leader>q\"", "mpea\"<Esc>bi\"<Esc>`pl")

