return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

            auto_install = true,

            highlight = {
                enable = true,
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Leader>ss",                      -- Selecciona la sección
                    node_incremental = "<Leader>si",                    -- Incrementa la sección 
                    scope_incremental = "<Leader>sc",                   -- Incrementa la selección (Pero scope)
                    node_decremental = "<Leader>sd",                    -- Decrementa la selecció
                },
            },
        })
    end,
}
