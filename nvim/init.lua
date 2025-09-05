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
