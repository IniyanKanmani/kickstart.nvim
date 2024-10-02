return {
  { -- Harpoon
    'theprimeagen/harpoon',

    keys = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      return {
        { '<leader>ht', mark.toggle_file, mode = 'n', desc = 'Harpoon toggle file' },
        { '<leader>hc', mark.clear_all, mode = 'n', desc = 'Harpoon clear all' },
        { '<leader>hm', ui.toggle_quick_menu, mode = 'n', desc = 'Harpoon toggle menu' },
      }
    end,
  },
}
