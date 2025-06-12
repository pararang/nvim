return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    priority = 900, -- Load before mason-lspconfig
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    priority = 800,
    dependencies = { "williamboman/mason.nvim" }, -- Explicit dependency
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "intelephense", -- For PHP/Laravel
          "typescript-language-server",
        },
        automatic_installation = true,
      })
    end,
  }
}
