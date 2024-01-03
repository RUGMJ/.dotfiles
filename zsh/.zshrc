export ZSH="$HOME/.oh-my-zsh"

export WLR_NO_HARDWARE_CURSOR=1

plugins=(git you-should-use)

source $ZSH/oh-my-zsh.sh

alias ls="exa --icons"
alias la="exa --icons -a"
alias ledc="led-controller"
alias cat="bat"
alias math="qalc"

export THEOS_DEVICE_IP=192.168.1.186

export PATH=$PATH:/home/rugmj/.cargo/bin

eval $(thefuck --alias)

eval "$(starship init zsh)"

export GTK_THEME=Adwaita:dark

export PAGER=bat

eval "$(zoxide init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Autostart hyprland if not already started
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec Hyprland
fi

## vim bindings
bindkey -v

colorscript random
