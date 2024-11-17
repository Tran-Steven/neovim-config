local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local opts = {}

-- map leader to <Space>
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>k', ':CopilotChat ', { noremap = true, silent = false })
-- auto numbering
vim.cmd('set number')
vim.o.clipboard = "unnamed"

require("lazy").setup("plugins")
require("vim-options")


