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
 ▄▄▄▄ ▄   ▄ ▄ ▄▄▄▄  
█   █ █   █ ▄ █ █ █ 
█   █  ▀▄▀  █ █   █ 
            █       ]],
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
        { section = "keys", gap = 0, padding = 1 },
        { section = "startup" },
      },
    },
    --#endregion dashboard

    --#region indent
    indent = {
      enabled = true,
      priority = 2,
      only_scope = true,
    },
    --#endregion indent

    --#region picker
    picker = {
      enabled = true,
      prompt = "=> ",
      focus = "input",
      auto_close = true,
      enter = true,
      hidden = true,
      matcher = {
        fuzzy = true,
        smarcase = true,
        ignorecase = true,
      },
      sources = {
        explorer = {
          follow_file = true,
          auto_close = true,
        },
        files = {
          hidden = true,
          ignored = false,
        },
        grep = {
          hidden = true,
          ignored = false,
        },
      },
    },
    --#endregion picker
  },
}
