return {
  { -- Flutter Tools
    'akinsho/flutter-tools.nvim',

    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },

    cmd = {
      'FlutterRun',
      'FlutterQuit',
      'FlutterReload',
      'FlutterRestart',
      'FlutterLspRestart',
      'FlutterDevTools',
    },

    keys = {
      { '<leader>fs', '<cmd>FlutterRun<CR>', mode = 'n', desc = 'Flutter run' },
      { '<leader>fq', '<cmd>FlutterQuit<CR>', mode = 'n', desc = 'Flutter quit' },
      { '<leader>fl', '<cmd>FlutterReload<CR>', mode = 'n', desc = 'Flutter reload' },
      { '<leader>fr', '<cmd>FlutterRestart<CR>', mode = 'n', desc = 'Flutter restart' },
      { '<leader>flr', '<cmd>FlutterLspRestart<CR>', mode = 'n', desc = 'Flutter lsp restart' },
      { '<leader>fd', '<cmd>FlutterDevTools<CR>', mode = 'n', desc = 'Flutter open dev tools' },
    },

    opts = {
      ui = {
        border = 'rounded',
      },
      decorations = {
        statusline = {
          app_version = false,
          device = true,
          project_config = true,
        },
      },
      debugger = {
        enabled = true,
      },
      widget_guides = {
        enabled = true,
      },
      dev_tools = {
        autostart = true, -- autostart devtools server if not detected
        auto_open_browser = true, -- Automatically opens devtools in the browser
      },
      outline = {
        auto_open = false,
      },
      lsp = { -- dart lsp is auto set by this plugin
        color = { -- show the derived colours for dart variables
          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
        },
        capabilities = Capabilities,
      },
    },
  },
}
