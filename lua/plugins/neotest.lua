return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/nvim-nio" -- Add the missing dependency
    },
    config = function()
      require("neotest").setup({
        adapters = {
          -- Add your adapters here
        }
      })
    end
  }
}
