return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "auto", -- "auto", "main", "moon", or "dawn"
    dark_variant = "main", -- used when variant = "auto"
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    -- vim.cmd.colorscheme("rose-pine")
  end,
}
