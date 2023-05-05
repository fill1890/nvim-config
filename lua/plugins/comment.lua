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

    vim.keymap.set('n', '?', function()
        return vim.v.count == 0
            and '<Plug>(comment_toggle_linewise_current)'
            or '<Plug>(comment_toggle_linewise_count)'
    end, { desc = 'Comment.nvim: Toggle comment' })
end

return M
