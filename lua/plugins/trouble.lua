local M = {}

function M.setup(use)
    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require'trouble'.setup({
                mode = 'document_diagnostics',
            })
        end
    }

    vim.keymap.set('n', '<Leader>t', '<cmd>TroubleToggle<cr>')
end

return M
