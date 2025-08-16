return {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
        -- require"startup".setup(require"config.startup_nvim")
        require("startup").setup({theme = "dashboard"}) -- put theme name here
    end
}
