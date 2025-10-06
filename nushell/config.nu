use ./rust.nu
use ./python.nu/ *
use ./emblica.nu/ *
use ./sanoma.nu/ *
use ./kubectl.nu/ *

alias archive = /usr/bin/zip

$env.PATH ++= [
  /nix/var/nix/profiles/default/bin
  ~/.nix-profile
  ~/.nix-profile/bin/
]

# Zoxide for better cd
source ~/.config/zoxide.nu
alias cd = z

source ./starship.nu
source ./gruvbox.nu
$env.config.hooks.env_change.PWD = ($env.config.hooks.env_change.PWD | append (source ./direnv.nu))

$env.config.color_config = $gruvbox_theme
