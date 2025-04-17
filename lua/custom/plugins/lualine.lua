return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      -- no need for theme, lualine will autodetect/autogenerate one!
      globalstatus = true,
    },
    extentions = {
      'neo-tree',
      'lazy',
      'fzf',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
