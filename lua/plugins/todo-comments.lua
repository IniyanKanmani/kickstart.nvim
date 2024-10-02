return {
  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',

    dependencies = {
      'nvim-lua/plenary.nvim',
    },

    event = 'VimEnter',

    opts = {
      signs = false,
    },
  },
}
