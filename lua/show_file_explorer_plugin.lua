-- If Neovim is inside a directory, then open Neotree in the current buffer.
-- This is called at the end of init.lua and prevents your from seeing the default :Explorer (:Ex) command.

local neotree_cmd = 'Neotree toggle'

local file_explorer_plugin_cmd = neotree_cmd

local display_neotree = function()
  vim.cmd('' .. file_explorer_plugin_cmd)
end

local currentFilePath = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':p')
local isDirectory = vim.fn.isdirectory(currentFilePath) == 1

if isDirectory then
  vim.defer_fn(display_neotree, 0)
end
