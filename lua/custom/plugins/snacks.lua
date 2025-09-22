return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    indent = {
      animate = {
        enabled = false,
      },
    },
    image = {},
    lazygit = {
      configure = true,
    },
  },
  keys = {
    -- Git
    {
      '<leader>gb',
      function()
        Snacks.picker.git_branches()
      end,
      desc = 'Git [b]ranches',
    },
    {
      '<leader>gl',
      function()
        Snacks.picker.git_log()
      end,
      desc = 'Git [l]og',
    },
    {
      '<leader>gL',
      function()
        Snacks.picker.git_log_line()
      end,
      desc = 'Git Log [L]ine',
    },
    {
      '<leader>gs',
      function()
        Snacks.picker.git_status()
      end,
      desc = 'Git [s]tatus',
    },
    {
      '<leader>gS',
      function()
        Snacks.picker.git_stash()
      end,
      desc = 'Git [S]tash',
    },
    {
      '<leader>gd',
      function()
        Snacks.picker.git_diff()
      end,
      desc = 'Git [d]iff (Hunks)',
    },
    {
      '<leader>gf',
      function()
        Snacks.picker.git_log_file()
      end,
      desc = 'Git Log [f]ile',
    },
    -- Search
    {
      '<leader>sc',
      function()
        Snacks.picker.command_history()
      end,
      desc = '[S]earch [c]ommand History',
    },
    {
      '<leader>sm',
      function()
        Snacks.picker.commands()
      end,
      desc = '[S]earch Com[m]ands',
    },
    {
      '<leader>sk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = '[S]earch [k]eymaps',
    },
    -- LSP
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto [d]efinition',
    },
    {
      '<leader>ss',
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = '[S]earch LSP [s]ymbols',
    },
    {
      '<leader>sS',
      function()
        Snacks.picker.lsp_workspace_symbols()
      end,
      desc = '[S]earch LSP Workspace [S]ymbols',
    },
    -- Other
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazy[g]it',
    },
    {
      '<leader>.',
      function()
        Snacks.scratch()
      end,
      desc = 'Toggle Scratch Buffer',
    },
  },
}
