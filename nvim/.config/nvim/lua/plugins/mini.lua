return {
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    require("mini.ai").setup()
    -- require("mini.move").setup()
    require("mini.surround").setup()
    require("mini.splitjoin").setup()
    -- require("mini.pairs").setup()
    -- require("mini.animate").setup()
    -- require("mini.cursorword").setup()
    -- require("mini.indentscope").setup()
  end
}
