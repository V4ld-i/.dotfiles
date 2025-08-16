--
--  ██▒   █▓ ▄▄▄       ██▓    ▓█████▄  ██▓
-- ▓██░   █▒▒████▄    ▓██▒    ▒██▀ ██▌▓██▒
--  ▓██  █▒░▒██  ▀█▄  ▒██░    ░██   █▌▒██▒
--   ▒██ █░░░██▄▄▄▄██ ▒██░    ░▓█▄   ▌░██░
--    ▒▀█░   ▓█   ▓██▒░██████▒░▒████▓ ░██░
--    ░ ▐░   ▒▒   ▓▒█░░ ▒░▓  ░ ▒▒▓  ▒ ░▓  
--    ░ ░░    ▒   ▒▒ ░░ ░ ▒  ░ ░ ▒  ▒  ▒ ░
--      ░░    ░   ▒     ░ ░    ░ ░  ░  ▒ ░
--       ░        ░  ░    ░  ░   ░     ░  
--      ░                      ░          
--
-- Fichero init.lua creado por V4ld-i https://github.com/V4ld-i
-- --------------------------------------------------------------
-- 
-- init.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/folke/lazy.nvim.git",
                "--branch=stable",
                lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)


require("options") -- En el fichero ./lua/options.lua se encuentra las opciones basicas de configuración de nvim
require("lazy").setup("plugins") -- En el fichero ./lua/plugins.lua se encuentra los plugins y la config de lazyvim
