-- Define que os tabs serão automaticamente convertidos em espaços
vim.cmd("set expandtab")
-- Define o número de colunas que um tab ocupa. Neste caso, um tab é igual a 2 espaços
vim.cmd("set tabstop=2")
-- Define o número de espaços que um tab inserido em modo de inserção ou comando conta. Neste caso, um tab é igual a 2 espaços
vim.cmd("set softtabstop=2")
-- Define o número de espaços usados para o recuo automático. Neste caso, o recuo é de 2 espaços
vim.cmd("set shiftwidth=2")
-- Define o número de linhas ao lado esquerdo 
vim.cmd("set nu")
-- Define o mapleader de comandos
vim.g.mapleader = " "

-- Função para abrir um terminal na parte inferior
local terminal_buf = nil
local terminal_win = nil

function toggle_bottom_terminal()
    if terminal_buf == nil or not vim.api.nvim_buf_is_valid(terminal_buf) then
        vim.cmd('botright split term://zsh')
        terminal_buf = vim.fn.bufnr('%')
        terminal_win = vim.fn.win_getid()
        vim.cmd('resize 10')
        vim.cmd('startinsert')
    else
        vim.cmd('lua vim.api.nvim_win_close(' .. terminal_win .. ', true)')
        terminal_buf = nil
        terminal_win = nil
    end
end

vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua toggle_bottom_terminal()<CR>', { noremap = true, silent = true })


