vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", {})
vim.keymap.set("n", "<leader>t", ":vsplit<CR>:terminal<CR>", {})
vim.keymap.set("n", "<leader>s", ":split<CR>", {})
