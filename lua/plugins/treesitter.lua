return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", dependencies = "windwp/nvim-ts-autotag",
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

