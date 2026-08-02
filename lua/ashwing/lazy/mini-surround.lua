-- lua/plugins/mini-surround.lua
return {
  "echasnovski/mini.surround",
  version = false,
  event = "VeryLazy",
  config = function()
    local mini_surround = require("mini.surround")

    mini_surround.setup({
      mappings = {
        add = "sa",            -- Add surrounding
        delete = "sd",         -- Delete surrounding
        find = "sf",           -- Find surrounding (to the right)
        find_left = "sF",      -- Find surrounding (to the left)
        highlight = "sh",      -- Highlight surrounding
        replace = "sr",        -- Replace surrounding
        update_n_lines = "sn", -- Update number of lines for surrounding search
      },
      search_method = "cover",
    })

    -- Custom keymap: add Markdown bold (**)
    vim.keymap.set("n", "sb", function()
      mini_surround.add("**")
    end, { desc = "Add Markdown bold surround (**)" })
  end,
}
