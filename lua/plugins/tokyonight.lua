return {
  { -- Colorscheme
    'folke/tokyonight.nvim',

    priority = 1000, -- Make sure to load this before all the other start plugins.

    init = function()
      -- require('tokyonight').setup {
      --   style = 'night',
      --   transparent = true,
      --   styles = {
      --     sidebars = 'transparent',
      --     floats = 'transparent',
      --   },
      --   on_colors = function() end,
      --   on_highlights = function() end,
      -- }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'

      -- For transparent background uncomment following lines
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
    end,
  },
}
