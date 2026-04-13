# env.nu
#
# Installed by:
# version = "0.109.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

^ssh-agent -c
  | lines
  | first 2
  | parse "setenv {name} {value};"
  | transpose -r
  | into record
  | load-env

$env.PATH = ($env.PATH | append "/usr/bin/stow")
# $env.PATH = ($env.PATH | append "$HOME/.rbenv/bin")
$env.PATH = ($env.PATH | append "/opt/nvim-linux-x86_64/bin")
# /home/badgr/.cargo/bin
$env.PATH = ($env.PATH | append "/home/badgr/.cargo/bin")

# Nix
# $env.PATH = ($env.PATH | split row (char esep) | append $"($env.HOME)/.nix-profile/bin" | uniq)

# SSH Agent
$env.SHH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"

# Zoxide
zoxide init nushell | save -f ~/.zoxide.nu
