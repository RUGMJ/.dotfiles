$env.THEOS = "/opt/theos"
$env.THEOS_DEVICE_IP = "192.168.1.183"
$env.PAGER = "bat"
$env.EDITOR = "nvim"

$env.CC = "clang"
$env.CXX = "clang++"

$env.PNPM_HOME = "/home/rugmj/.local/share/pnpm"

$env.PATH = (
  $env.PATH
  | split row (char esep)
  | append /usr/local/bin
  | append ($env.HOME | path join .cargo bin)
  | append ($env.HOME | path join .local bin)
  | append ($env.PNPM_HOME)
  | uniq
)

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

mkdir ~/.cache/zoxide
zoxide init nushell | save -f ~/.cache/zoxide/init.nu
source private-env.nu
