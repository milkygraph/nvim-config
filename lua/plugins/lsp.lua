return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- jedi_completion = {fuzzy = true},
                -- jedi_completion = {eager=true},
                jedi_completion = {
                  include_params = true,
                },
                jedi_signature_help = { enabled = true },
                jedi = {
                  extra_paths = { "~/projects/work_odoo/odoo14", "~/projects/work_odoo/odoo14" },
                  -- environment = {"odoo"},
                },
                pyflakes = { enabled = true },
                pylint = { args = { "--ignore=E501,E231", "-" }, enabled = true, debounce = 200 },
                pylsp_mypy = { enabled = false },
                pycodestyle = {
                  enabled = true,
                  ignore = { "E501", "E231" },
                  maxLineLength = 150,
                },
                yapf = { enabled = true },
              },
            },
          },
        },
      },
    },
  },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
}
