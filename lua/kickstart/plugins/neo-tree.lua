-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      commands = {
        open_in_default_app = function(state)
          local node = state.tree:get_node()
          local filepath = node:get_id()
          vim.ui.open(vim.fn.expand(filepath))
        end,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['go'] = 'open_in_default_app',
        },
      },
      filtered_items = {
        visible = true,
        -- hide_dotfiles = false,
        -- hide_gitignored = false,
      },
    },
  },
}
