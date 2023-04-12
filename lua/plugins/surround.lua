local M = {}

function M.setup(use)
    use {
        'kylechui/nvim-surround',
        tag = '*',
        config = function()
            require'nvim-surround'.setup({})
        end
    }
end

return M
