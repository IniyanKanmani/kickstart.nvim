return {
  { -- Auto Save
    'okuuva/auto-save.nvim',

    cmd = {
      'ASToggle',
    }, -- optional for lazy loading on command

    event = {
      'InsertLeave',
      'TextChanged',
    }, -- optional for lazy loading on trigger events

    keys = {
      { '<leader>as', '<cmd>ASToggle<CR>', mode = 'n', desc = 'Toggle auto save' },
    },

    opts = {},
  },
}
