return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({})
        vim.keymap.set("n", "<leader><leader>e", ":NvimTreeFocus<CR>", { silent = true })
        vim.keymap.set("n", "<leader>e",  ":NvimTreeToggle<CR>", { silent = true })
  end
}
