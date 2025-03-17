return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' },
        },
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
    }
  end,
}
