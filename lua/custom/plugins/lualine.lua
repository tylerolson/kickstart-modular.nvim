-- lualine

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin',
        globalstatus = true,
      },
      extentions = {
        'neo-tree',
        'lazy',
        'fzf',
      },
    }
  end,
}
