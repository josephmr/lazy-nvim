return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "gdscript" })
      end
      if type(opts.indent) == "table" then
        if type(opts.indent.disable) == "table" then
          vim.list_extend(opts.indent.disable, { "gdscript" })
        else
          opts.indent.disable = { "gdscript" }
        end
      else
        opts.indent = {
          disable = { "gdscript" },
        }
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
      },
    },
  },
}
