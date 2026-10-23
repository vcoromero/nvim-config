-- The remote clipboard helper is Linux/Omarchy specific (uses /proc and wl-copy).
if vim.fn.has("linux") == 1 then
  require("config.remote_clipboard").setup()
end
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
