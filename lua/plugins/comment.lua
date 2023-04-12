local M = {}

function M.setup(use)
    use {
        'numToStr/Comment.nvim',
        config = function()
            require'Comment'.setup({
                padding = false,
                ignore = '^$',
            })
        end
    }
end

return M
