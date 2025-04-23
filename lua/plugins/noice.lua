return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    cmdline = {
      format = {
        cmdline = {
          title = 'Command',
          icon = '> ',
        },
        search_down = { icon = '🔍 ' },
        search_up = { icon = '🔎 ' },
        filter = { icon = '$ ' },
      },
    },
    views = {
      popup = {
        border = {
          style = 'single',
          highlight = 'Normal',
        },
      },
      cmdline_popup = {
        border = {
          style = 'single', -- border is visible
          highlight = 'Normal', -- use 'Normal' or your preferred highlight group
        },
        position = {
          row = 5,
          col = '50%',
        },
        size = {
          width = 60,
          height = 'auto',
        },
        win_options = {
          winhighlight = {
            Normal = 'NoiceCmdlinePopupTransparent',
            FloatBorder = 'Normal', -- border uses 'Normal' highlight
          },
        },
      },
      popupmenu = {
        border = {
          style = 'single',
          highlight = 'Normal',
        },
      },
      split = {
        border = {
          style = 'single',
          highlight = 'Normal',
        },
      },
      mini = {
        border = {
          style = 'single',
          highlight = 'Normal',
        },
      },
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },

  config = function(_, opts)
    require('noice').setup(opts)
    -- Keep this line only if you want the border transparent too:
    -- vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorder',  transparent)
  end,
}
