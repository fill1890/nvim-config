local M = {}

function M.setup(use)
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "c",
                    "java",
                    "javascript",
                    "python",
                    "cpp",
                    "make",
                    "markdown",
                    "vim",
                    "lua"
                },
                highlight = {
                    enable = true
                },
                --indent = {
                --    enable = true
                --}
            }

            vim.cmd 'set autoindent'
            vim.cmd 'filetype plugin indent on'

            vim.opt.foldmethod = 'expr'
            vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
        end
    }
end

return M
