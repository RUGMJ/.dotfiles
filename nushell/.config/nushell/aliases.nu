alias la = ls -a
alias l = ls -l
alias ledc = led-controller
alias cat = bat
alias math = qalc
alias n = nvim

alias g = git
alias ga = git add
alias gc = git commit
alias gcm = git commit --message
alias gca = git commit --all
alias gcam = git commit --all --message
alias gst = git status
alias gl = git pull
alias gp = git push

def mac [...args] {
    let args = $args | str join ' '
    ssh -p 2222 127.0.0.1 $"source ~/.zshrc && cd /Users/rugmj/linux-root(pwd) && ($args)"
}

def gh-create [
    --public
    --private
    --name: string
] {
    gh repo create --private --source=. --remote=origin
    git push -u --all
    gh browse
}
