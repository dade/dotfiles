return {
  "Mathijs-Bakker/godotdev.nvim",
  dependencies = { "nvim-dap", "nvim-dap-ui", "nvim-treesitter" },
  opts = {
    editor_host = "127.0.0.1",
    editor_port = 6005,
    debug_port = 6006,
    csharp = false,
    autostart_editor_server = false,
    formatter = "gdformat",
    treesitter = {
      auto_setup = true,
      ensure_installed = { "gsdcript" },
    },
    editor_server = {
      address = "/tmp/godot.pipe",
    },
  },
}
