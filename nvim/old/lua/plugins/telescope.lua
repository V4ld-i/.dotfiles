return {
    "nvim-telescope/telescope.nvim", tag = '0.1.5',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<C-p>", builtin.find_files, {})            -- Habrir el telescope 
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})        -- Hace un grep en el fichero
    end,
}
