return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local float_terminal = Terminal:new({
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.4)
        end,
      },
      close_on_exit = true,
      shell = vim.o.shell,
    })

    function _G.toggle_float_terminal()
      float_terminal:toggle()
    end

    vim.api.nvim_create_user_command("ToggleFloatTerm", function()
      _G.toggle_float_terminal()
    end, { desc = "Toggle floating terminal" })
  end,
}
