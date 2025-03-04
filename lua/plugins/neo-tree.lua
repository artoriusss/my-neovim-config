return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        auto_expand_width = true,
        width = 30,
        max_width = 80,
      },
    })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left <CR>', {})

    vim.keymap.set('n', '<leader>t', function()
      vim.cmd('Neotree toggle source=buffers')
    end, { desc = 'Toggle Neo-tree Buffers' })

    vim.keymap.set('n', '<leader>b', function()
      vim.cmd('Neotree toggle')
    end, { desc = 'Toggle NeoTree' })
  end
}
