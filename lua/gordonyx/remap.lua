local telescope_builtin = require 'telescope.builtin'

vim.g.mapleader = " "

vim.keymap.set('n', "<leader>ff", vim.cmd.Ex)
vim.keymap.set("n", "<leader>du", vim.cmd.DBUIToggle)
vim.keymap.set("n", "<leader>df", vim.cmd.DBUIFindBuffer)
vim.keymap.set("n", "<leader>dr", vim.cmd.DBUIRenameBuffer)
vim.keymap.set("n", "<leader>dl", vim.cmd.DBUILastQueryInfo)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>]", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<leader>[", "<cmd>tabprev<cr>")
vim.keymap.set('n', '<leader>gf', telescope_builtin.git_files, {})
vim.keymap.set('n', '<leader>sd', telescope_builtin.diagnostics, {})
vim.keymap.set('n', '<leader>sg', telescope_builtin.live_grep, {})

vim.keymap.set('n', '<leader>sw', function()
	telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<leader>sf', function()
	telescope_builtin.find_files({
		find_command = { 'rg', '--files', '-g', '!.git', '--hidden' },});
end)

vim.keymap.set('n', '<leader>vv', vim.cmd.Vexplore)
