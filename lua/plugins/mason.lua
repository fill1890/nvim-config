local M = {}

function M.setup(use)
    use {
        'williamboman/mason.nvim',
        requires = 'williamboman/mason-lspconfig',
        config = function()
            require'mason'.setup()
            require'mason-lspconfig'.setup()
        end
    }
end

return M
