--  
--  ██▒   █▓ ▄▄▄
--  ▓██░   █▒▒████▄
--   ▓██  █▒░▒██  ▀█▄
--    ▒██ █░░░██▄▄▄▄██
--     ▒▀█░   ▓█   ▓██▒
--     ░ ▐░   ▒▒   ▓▒█░
--     ░ ░░    ▒   ▒▒ ░
--       ░░    ░   ▒
--        ░        ░  ░
--       ░
--  ------------------------------------

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false
-- Esto cambia los tabuladores por espacios
vim.opt.expandtab = true
vim.opt.tabstop = 4
-- Si pulsamos ">>" indenta la linea correctamente
vim.opt.shiftwidth = 4

-- Dejamos utilizar en bloque visual la virtualizacion.
vim.opt.virtualedit = "block"

-- Sincroniza el portapapeles del sistema con el de Nvim
vim.opt.clipboard = "unnamedplus"

-- Dividira la pantalla si cambio algo en masa en el fichero
-- por ejemplo si hago :%s/vim/nvim esto cambia todas las instancias de 
--     vim por nvim y vere como queda este cambio en una pantalla abajo
vim.opt.inccommand = "split"

-- Nvim es case-sensitive con los comandos
-- Esta opción me permite ignorar las mayusculas para autocompletar los comandos
--     con Tab
vim.opt.ignorecase = true

vim.opt.termguicolors = true


-- Set up lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ 
      "git", 
      "clone", 
      "--filter=blob:none", 
      "https://github.com/folke/lazy.nvim.git", 
      "--branch=stable", 
      lazypath 
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "rebelot/kanagawa.nvim",

        config = function()
            vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
})

