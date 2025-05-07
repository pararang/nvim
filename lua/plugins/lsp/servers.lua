return {
  jsonls = {
    settings = {
      json = {
        schema = require("schemastore").json.schemas(),
        validate = { enable = true },
      },
    },
  },
  terraformls = {
    cmd = { "terraform-ls" },
    arg = { "server" },
    filetypes = { "terraform", "tf", "terraform-vars" },
  },
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        workspace = {
          checkThirdParty = false,
          library = {
            "${3rd}/luv/library",
            unpack(vim.api.nvim_get_runtime_file("", true)),
          },
        },
        completion = {
          callSnippet = "Replace",
        },
      },
    },
  },
  bashls = {
    filetypes = { "sh", "zsh" },
  },
  vimls = {
    filetypes = { "vim" },
  },
  -- tsserver = {},
  ts_ls = {},
  gopls = {},
  pyright = {},

  solidity_ls_nomicfoundation = {},
  yamlls = {
    cmd = { "yaml-language-server", "--stdio" },
    filetypes = { "yaml" },
  },

  zls = {},
  clangd = {},
  marksman = {},
  -- "markdownlint-cli2", "markdown-toc"
  
  -- PHP configuration moved from php.lua
  intelephense = {
    settings = {
      intelephense = {
        completion = {
          triggerParameterHints = true,
          insertUseTab = true,
        },
        format = {
          enable = false, -- Disable intelephense formatting since you're using conform.nvim
        },
        -- You can uncomment and customize these if needed
        -- environment = { phpVersion = "8.1" },
        -- stubs = { "Core", "apache", "bcmath", "bz2", ... "wordpress" },
      },
    },
    filetypes = { "php" },
    -- The on_attach function in lsp.lua will handle disabling formatting capabilities
  },
}
