return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "html","java", "typescript","python"},
      auto_insall = true,
      highlight = { enable = true },
      indent = { enable = true },
      autotag = {enable = true}
    })
  end
}

