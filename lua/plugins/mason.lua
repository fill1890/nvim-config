return {
    {
        'williamboman/mason.nvim',
        lazy = false,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = 'williamboman/mason.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        lazy = false,
    }
}
