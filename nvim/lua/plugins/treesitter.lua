return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "bash",
        "ruby",
        "html",
        "css",
        "scss",
        "less",
        "javascript",
        "typescript",
        "json",
        "lua"
      },
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end
}
