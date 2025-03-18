return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' },
        },
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'neo-tree',
            highlight = 'Directory',
            text_align = 'center',
            separator = false, -- this is stupid
          },
        },

        numbers = 'ordinal',
      },
    }

    vim.keymap.set('n', 'gb', '<Cmd>BufferLinePick<CR>', { silent = true, desc = 'Pick a buffer' })
    vim.keymap.set('n', 'gB', '<Cmd>BufferLinePickClose<CR>', { silent = true, desc = 'Delete a buffer' })

    vim.keymap.set('n', 'g[', '<Cmd>BufferLineCyclePrev<CR>', { silent = true, desc = 'Previous buffer' })
    vim.keymap.set('n', 'g]', '<Cmd>BufferLineCycleNext<CR>', { silent = true, desc = 'Next buffer' })
  end,
}
