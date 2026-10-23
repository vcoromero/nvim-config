-- Omarchy regenerates this spec in its state dir whenever the theme changes.
-- Only load it where Omarchy exists; elsewhere fall back to a fixed colorscheme.
local omarchy_theme = vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")

if vim.fn.filereadable(omarchy_theme) == 1 then
  return dofile(omarchy_theme)
end

return {
  {
    "ribru17/bamboo.nvim",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bamboo",
    },
  },
}
