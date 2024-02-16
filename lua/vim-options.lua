vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })
vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
vim.api.nvim_create_autocmd("BufRead", { -- Changed from BufReadPre
  desc = "Open neo-tree on enter",
  group = "neotree_autoopen",
  once = true,
  callback = function()
    if not vim.g.neotree_opened then
      vim.cmd("Neotree show")
      vim.g.neotree_opened = true
    end
  end,
})

vim.cmd([[
    augroup AutoFormatOnSave
        autocmd!
        autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)
    augroup END
]])
