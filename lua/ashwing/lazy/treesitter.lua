return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
 
    configs.setup({
      indent = { enable = false },  -- disable treesitter's indent handler
      ensure_installed = {
        "java", "lua", "vim", "vimdoc", "javascript", "html", "python", "typescript"
      },
      sync_install = false,
      highlight = { enable = true },
    })
  end
}
