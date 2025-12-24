return {
  "folke/snacks.nvim",
  opts = {
    --#region dashboard
    dashboard = {
      enabled = true,
      lazy = false,
      width = 40,
      row = nil,
      col = nil,
      pane_gap = 6,
      autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZm",
      preset = {
        pick = nil,
        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠏⠀⣀⠈⠙⠒⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠒⠋⠁⣀⠀⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠀⣾⣿⣿⣷⣤⣀⠈⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠁⣀⣤⣾⣿⣿⣷⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠀⣼⠃⠙⠻⢿⣿⣿⣷⣄⠀⠑⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠊⢀⣠⣾⣿⣿⡿⠟⠋⡘⣧⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⣰⣿⢸⢸⣿⣿⣿⠿⣿⡀⠈⢂⡀⠙⢦⡀⠀⠀⠀⠀⠀⢀⡴⠉⢀⣴⣿⣿⣿⣿⣿⣿⣿⡇⡇⣿⣆⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠁⢀⣿⣿⢸⠸⠟⢿⡇⢀⠡⣴⣄⣠⣿⣆⠀⠙⠒⠒⠒⠒⠒⠋⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡇⣿⣿⡀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⣾⣿⣿⠈⠰⠠⡀⣴⣄⣤⣿⡿⠛⠋⢉⣀⣠⣤⣤⣤⣤⣤⣄⣈⡛⠛⠛⢿⣿⣿⣿⣿⣿⣿⡇⠃⣿⣿⣷⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⢸⡿⡿⠟⠀⣰⣧⣴⣾⣿⣿⣋⠄⢀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣝⣿⣿⣿⣿⣿⣇⠀⠿⢿⣿⡇⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠀⡄⠀⠁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣧⣴⡈⠟⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣸⣿⣧⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⣡⣄⣠⣄⢸⣿⡿⣿⣿⣿⣿⣿⣿⣇⠀⡈⢠⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡇⣠⣿⣿⣿⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣼⡟⣱⣿⣿⣿⣿⣿⣿⣿⣿⡟⠈⠄⣨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⢻⣧⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠘⣿⣿⣿⣿⠏⢸⣿⣿⣿⡿⠛⠋⣉⣙⠛⠓⢴⣦⠙⠁⠻⣿⣿⣿⡿⠛⠛⣋⣉⡙⠛⢿⣿⣿⣿⡇⢻⣿⣿⣿⣿⠃⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⣿⣿⣿⡏⢀⣿⣿⡿⠁⣠⣾⣿⣿⣿⣿⣶⣄⠁⢀⡀⠿⠛⠿⠋⣠⣶⣿⣿⣿⣿⣷⣄⠈⢿⣿⣿⡀⢹⣿⣿⣿⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⢸⣿⣿⠀⢘⣿⡟⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣇⢸⡏⠀⠀⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⢻⣿⡇⠀⣿⣿⡇⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⠸⢿⡿⡇⢸⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⣿⣶⣿⡆⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⡇⢸⣿⡿⠧⠀⠑⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠲⠤⣄⠀⠸⡇⢸⣿⡇⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⢸⣿⣿⣿⣇⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢸⣿⡇⢸⠇⠀⣠⠤⠖⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠐⠁⢸⣿⣷⡀⡈⠛⠿⠿⣿⡿⠟⢉⢀⣴⣿⣧⣀⣼⣿⣦⡀⡉⠻⢿⣿⠿⠿⠛⢁⢀⣾⣿⡇⠀⠂⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠤⣶⠀⢸⣿⣿⣷⣝⡳⠶⠶⠶⢖⣠⣄⠻⣿⣿⡿⠛⢿⣿⣿⠟⣢⣄⡢⠶⠶⠶⠾⠋⡄⢹⡟⠇⠀⣶⠤⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠇⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠐⢀⣤⣤⣤⡀⠂⣼⣿⣿⣿⣿⣿⣿⣿⣄⣠⣤⠁⠇⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣎⠀⠪⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡌⢿⣿⣿⣿⡿⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠶⠀⠕⠀⣱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠦⣀⡀⠈⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠘⠟⠛⣛⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⣀⣀⠴⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⢻⡿⣫⠉⠛⠻⠿⠿⠿⣿⣷⣴⣿⣿⣿⣿⠿⠿⠿⠟⠛⠋⣝⢿⡟⠀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠈⠈⢁⡠⠖⠒⠤⠤⣄⣀⣀⣀⣀⣀⣀⣀⣠⠤⠤⠒⠲⢄⡈⠁⠁⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠒⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      },
      formats = {
        icon = function(item)
          if item.file and item.icon == "file" or item.icon == "directory" then
            return Snacks.dashboard.icon(item.file, item.icon)
          end
          return { item.icon, width = 2, hl = "icon" }
        end,
        footer = { "%s", align = "center" },
        header = { "%s", align = "center" },
        file = function(item, ctx)
          local fname = vim.fn.fnamemodify(item.file, ":~")
          fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
          if #fname > ctx.width then
            local dir = vim.fn.fnamemodify(fname, ":h")
            local file = vim.fn.fnamemodify(fname, ":t")

            if dir and file then
              file = file:sub(-(ctx.width - #dir - 2))
              fname = dir .. "/…" .. file
            end
          end
          local dir, file = fname:match("^(.*)/(.+)$")
          return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
        end,
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        {
          pane = 2,
          icon = "",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        {
          pane = 2,
          icon = "",
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 12,
        },
        { section = "startup" },
      },
    },
    --#endregion dashboard
  },
}
