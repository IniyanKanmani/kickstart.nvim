return {
  { -- Codesnap
    'mistricky/codesnap.nvim',

    build = 'make build_generator',

    keys = {
      { '<leader>cc', '<cmd>CodeSnap<CR>', mode = 'x', desc = 'Save selected code snapshot into clipboard' },
      { '<leader>cs', '<cmd>CodeSnapSave<CR>', mode = 'x', desc = 'Save selected code snapshot in ~/Pictures' },
    },

    opts = {
      border = 'rounded',
      save_path = '~/Pictures',
      has_breadcrumbs = true,
      bg_theme = 'grape',
      watermark = '',
    },
  },
}
