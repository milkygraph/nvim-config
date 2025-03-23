-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded", -- style can be changed
      source = "always", -- show source in diagnostic popup window
      prefix = " ", -- prefix each diagnostic
      scope = "cursor", -- display diagnostic under cursor
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})
