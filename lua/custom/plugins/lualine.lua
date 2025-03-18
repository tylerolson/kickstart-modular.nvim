-- lualine

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup {
      options = {
        -- no need for theme, lualine will autodetect/autogenerate one!
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
