return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim

      -- Shows the current indent
      require('mini.indentscope').setup {
        symbol = '│',
      }

      -- Highlights word under cursor
      -- require('mini.cursorword').setup()
    end,
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        desc = 'Disable indentscope for certain filetypes',
        pattern = {
          'neo-tree',
          'help',
          'Trouble',
          'trouble',
          'lazy',
          'mason',
          'notify',
          'better_term',
          'toggleterm',
          'lazyterm',
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
