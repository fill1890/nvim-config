return {
    'nvim-treesitter/nvim-treesitter',

    build = function()
	local ts_update = require('nvim-treesitter.install').update({ with_sync = true})
	ts_update()
    end,

    opts = {
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
    },

    init = function()
	vim.cmd 'set autoindent'
	vim.cmd 'filetype plugin indent on'

	vim.opt.foldmethod = 'expr'
	vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end,
}

