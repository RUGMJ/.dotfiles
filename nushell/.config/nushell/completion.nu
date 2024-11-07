let default_completer = { |spans|
    carapace $spans.0 nushell ...$spans | from json
}

let zoxide_completer = { |spans|
    $spans | skip 1 | zoxide query -l ...$in | lines | where { |x| $x != $env.PWD }
}

let multiple_completers = { |spans|
    match $spans.0 {
        z => $zoxide_completer
        zi => $zoxide_completer
        _ => $default_completer
    } | do $in $spans
}

$env.config.completions.external = {
    enable: true
    max_results: 100
    completer: $multiple_completers
}
