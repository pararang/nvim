return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
        return 20
      end,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      direction = "float",
      close_on_exit = true,
      float_opts = {
        border = "curved",
      },
    })
    
    vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm direction=float<CR>", {noremap = true, silent = true})
    vim.keymap.set("t", "<C-t>", "<C-\\><C-n><cmd>ToggleTerm<CR>", {noremap = true, silent = true})
  end,
}
