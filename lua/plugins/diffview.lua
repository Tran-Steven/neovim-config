return {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    version = "*",
    config = function()
        require("diffview").setup({
            enhanced_diff_hl = true,
        })
    end,
}
