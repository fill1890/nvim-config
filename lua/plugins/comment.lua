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

    vim.keymap.set('n', '?', 'gcc', { desc = 'Comment.nvim: Toggle comment' })
end

return M
