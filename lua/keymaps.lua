-- vim mapleader
vim.g.mapleader = " "

-- lspconfig keymaps
vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- neoTree keymaps
vim.keymap.set('n', '<leader>oo', ':Neotree filesystem reveal right<CR>')
vim.keymap.set('n', '<leader>cc', ':Neotree close<CR>')

-- toggleTerm keymaps
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
