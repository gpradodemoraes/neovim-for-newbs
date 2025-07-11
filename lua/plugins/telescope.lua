return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
	  vim.keymap.set("n", "<C-a>", builtin.find_files, {})
      vim.keymap.set("n", "<C-p>", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      local actions = require("telescope.actions")
        require("telescope").setup{
          defaults = {
            mappings = {
              i = {
                ["<esc>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous
              },
            },
          }
        }

      require("telescope").load_extension("ui-select")
    end,
  },
}
