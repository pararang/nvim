-- Extra: Additional tools not covered by core plugin files
return {
  { "wakatime/vim-wakatime", lazy = false },

  -- Editor config support
  { "editorconfig/editorconfig-vim" },

  -- Kitty config highlighting
  { "fladson/vim-kitty" },

  -- nui.nvim dependency
  { "MunifTanjim/nui.nvim" },

  -- Show key presses
  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 6,
      position = "bottom-right",
    },
    keys = {
      {
        "<leader>kt",
        function()
          vim.cmd("ShowkeysToggle")
        end,
        desc = "Show key presses",
      },
    },
  },

  -- Breadcrumbs (winbar)
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    config = function()
      require("barbecue").setup({
        create_autocmd = false,
      })

      vim.api.nvim_create_autocmd({
        "WinScrolled",
        "BufWinEnter",
        "CursorHold",
        "InsertLeave",
      }, {
        group = vim.api.nvim_create_augroup("barbecue.updater", {}),
        callback = function()
          require("barbecue.ui").update()
        end,
      })
    end,
  },

  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        stop_eof = true,
        easing_function = "sine",
        hide_cursor = true,
        cursor_scrolls_alone = true,
      })
    end,
  },
}
