-- vim mapleader
vim.g.mapleader = " "

-- general keymaps
vim.keymap.set('n', '<leader>vp', ':vsplit<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- lspconfig keymaps
vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- neoTree keymaps
vim.keymap.set('n', '<leader>sb', ':Neotree filesystem reveal right<CR>')


-- toggleTerm keymaps
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')

-- none-ls
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
