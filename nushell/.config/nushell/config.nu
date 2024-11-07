source aliases.nu
source theme.nu
source completion.nu

$env.config = {
    show_banner: false,
    edit_mode: vi,
    color_config: $theme
}

use ~/.cache/starship/init.nu

source ~/.cache/zoxide/init.nu
