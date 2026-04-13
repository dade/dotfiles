# config.nu
#
# Installed by:
# version = "0.109.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.buffer_editor = "nvim"

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
tv init nu | save -f ($nu.data-dir | path join "vendor/autoload/tv.nu")

export def banner [] {
$"(ansi green)Startup time: ($nu.startup-time)(ansi reset)

(ansi violet)88d888b. dP    dP(ansi reset) (ansi cyan)│(ansi reset) Welcome to (ansi green)Nushell(ansi reset)
(ansi violet)88'  `88 88    88(ansi reset) (ansi cyan)│(ansi reset) based on the (ansi green)nu(ansi reset) language,
(ansi violet)88    88 88.  .88(ansi reset) (ansi cyan)│(ansi reset) where all data is structured!
(ansi violet)dP    dP `88888P'(ansi reset) (ansi cyan)│(ansi reset) Documentation: (ansi violet)https://nushell.sh(ansi reset)"
}

# YAZELIX START v4 - Yazelix managed configuration (do not modify this comment)
# delete this whole section to re-generate the config, if needed
source "/home/badgr/.config/yazelix/nushell/config/config.nu"
use /home/badgr/.config/yazelix/nushell/scripts/core/yazelix.nu *
# YAZELIX END v4 - Yazelix managed configuration (do not modify this comment)

# sesh manager integrations
use /home/badgr/.config/nushell/completions/sesh.nu
$env.config.keybindings = (
	$env.config.keybindings | append {
		name: sesh
		modifier: control
		keycode: char_t
		mode: [emacs, vi_normal, vi_insert]
		event: [
			{ send: executehostcommand, cmd: "sesh connect (sesh list | tv)" }
		]
	}
)

############################
# Some personal alaises
############################
# SSH agent & add main key
def ssh-main [] { ssh-agent -s; ssh-add ~/.ssh/github1 }

# Clear and print banner
def c [] { clear; banner }

# Listing
alias la = ls -a
alias ll = ls -l

# Quick commands
alias df = df -h

# nvim fallback
alias :q = exit

# Sesh
alias sc = sesh connect
alias slast = sesh last

# Godot Stuff
alias gddev = godotdev.sh

source ~/.zoxide.nu
