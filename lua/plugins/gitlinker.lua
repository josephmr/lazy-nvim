return {
  {
    "ruifm/gitlinker.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>gy",
        function()
          require("gitlinker").get_buf_range_url(vim.api.nvim_get_mode()["mode"])
        end,
        mode = { "n", "v" },
        desc = "Git link",
      },
    },
  },
}
