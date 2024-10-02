return {
  { -- Git signs
    'lewis6991/gitsigns.nvim',

    keys = function()
      local gitsigns = require 'gitsigns'

      return {
        -- Navigation
        {
          ']g',
          function()
            if vim.wo.diff then
              vim.cmd.normal { ']g', bang = true }
            else
              gitsigns.next_hunk()
            end
          end,
          mode = 'n',
          desc = 'Jump to next [g]it change',
        },
        {
          '[g',
          function()
            if vim.wo.diff then
              vim.cmd.normal { '[g', bang = true }
            else
              gitsigns.prev_hunk()
            end
          end,
          mode = 'n',
          desc = 'Jump to previous [g]it change',
        },

        -- Actions (Visual Mode)
        {
          '<leader>gs',
          function()
            gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
          end,
          mode = 'v',
          desc = 'Stage git hunk',
        },
        {
          '<leader>gr',
          function()
            gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
          end,
          mode = 'v',
          desc = 'Reset git hunk',
        },

        -- Actions (Normal Mode)
        { '<leader>gs', gitsigns.stage_hunk, mode = 'n', desc = 'Git [s]tage hunk' },
        { '<leader>gr', gitsigns.reset_hunk, mode = 'n', desc = 'Git [r]eset hunk' },
        { '<leader>gS', gitsigns.stage_buffer, mode = 'n', desc = 'Git [S]tage buffer' },
        { '<leader>gu', gitsigns.undo_stage_hunk, mode = 'n', desc = 'Git [u]ndo stage hunk' },
        { '<leader>gR', gitsigns.reset_buffer, mode = 'n', desc = 'Git [R]eset buffer' },
        { '<leader>gp', gitsigns.preview_hunk, mode = 'n', desc = 'Git [p]review hunk' },
        { '<leader>gb', gitsigns.blame_line, mode = 'n', desc = 'Git [b]lame line' },
        { '<leader>gd', gitsigns.diffthis, mode = 'n', desc = 'Git [d]iff against index' },
        {
          '<leader>gD',
          function()
            gitsigns.diffthis '@'
          end,
          mode = 'n',
          desc = 'Git [D]iff against last commit',
        },

        -- Toggles
        { '<leader>tb', gitsigns.toggle_current_line_blame, mode = 'n', desc = '[T]oggle git show [b]lame line' },
        { '<leader>tD', gitsigns.toggle_deleted, mode = 'n', desc = '[T]oggle git show [D]eleted' },
      }
    end,

    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}
