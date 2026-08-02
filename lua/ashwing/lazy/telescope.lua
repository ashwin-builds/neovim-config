return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    telescope.setup({
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = { prompt_position = 'top' },
        sorting_strategy = 'ascending',
        winblend = 0,
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>gf', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = '[F]ind [G]rep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = '[F]ind [B]uffer' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = '[F]ind [H]elp' })
  end,
}

