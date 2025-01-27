-- [[ Fixes highlighting color issues  (especially on floating windows)]]

-- Set the background color of the floating window to none
vim.cmd [[highlight NormalFloat guibg=none]]
-- Set the background color of the FloatBorder to none
vim.cmd [[highlight FloatBorder guibg=none]]
-- Adjust the winblend setting to control transparency
vim.o.winblend = 0
