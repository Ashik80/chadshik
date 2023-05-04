require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "pyright", "pylsp", "tsserver", "html", "cssls", "eslint", "jsonls" }
}
