return {
  "sudo-tee/opencode.nvim",
  config = function()
    require("opencode").setup({
      preferred_picker = "telescope",
      preferred_completion = "nvim-cmp",
      default_global_keymaps = true,
      default_mode = "build",
      keymap_prefix = "<leader>o",

      ui = {
        position = "right",
        window_width = 0.40,
        zoom_width = 0.8,
        display_model = true,
        display_context_size = true,
        display_cost = true,
        input = {
          min_height = 0.10,
          max_height = 0.25,
        },
        output = {
          tools = {
            show_output = true,
            show_reasoning_output = true,
            use_folds = true,
          },
        },
      },

      context = {
        enabled = true,
        current_file = {
          enabled = true,
          show_full_path = true,
        },
        selection = {
          enabled = true,
        },
        diagnostics = {
          warning = true,
          error = true,
        },
      },
    })
  end,
  dependencies = {
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "opencode_output" },
    },
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
  },
}
