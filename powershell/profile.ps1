$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })
. "$HOME/.cargo/env.ps1"

oh-my-posh init pwsh --config "atomic" | Invoke-Expression