# Tmux Cheatsheet

## Key Commands

Start a new session

```shell
tmux new -s NewSession
```

Detach from the current session

```shell
tmux detach
```

List all sessions

```shell
tmux ls
```

Attach to an existing session

```shell
tmux attach -t NewSession
```

Show all global options

```shell
tmux show-options -g
```

Show all available key bindings

```shell
tmux list-keys
```

Show all available commands

```shell
tmux list-commands
```

Kill the tmux server (closes all sessions)

```shell
tmux kill-server
```

Install TPM (Tmux Plugin Manager)

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Essential Shortcuts

* Prefix: `Ctrl + Space`
* Reload config: `Prefix + r`
* Detach from session: `Prefix + d`
* Create new window: `Prefix + c`
* Navigate to window: `Prefix + number`
* Next/previous window: `Prefix + n` / `Prefix + p`
* List windows: `Prefix + w`
* Rename window: `Prefix + ,`
* Rename session: `Prefix + $`
* List sessions: `Prefix + s`
* Split horizontally: `Prefix + \`
* Split vertically: `Prefix + -`
* Resize pane left: `Prefix + h`
* Resize pane down: `Prefix + j`
* Resize pane up: `Prefix + k`
* Resize pane right: `Prefix + l`
* Toggle pane zoom: `Prefix + m`
* Enter copy mode: `Prefix + [`
* Begin selection: `v`
* Copy selection: `y`
* Paste copied text: `Prefix + P`
* Save session (tmux-resurrect): `Prefix + Ctrl + s`
* Restore session (tmux-resurrect): `Prefix + Ctrl + r`
* Install TPM plugins: `Prefix + I`
* Update TPM plugins: `Prefix + U`
* Remove unused TPM plugins: `Prefix + Alt + u`

## Useful Snippets

Automatically start or attach to a default tmux session from `.zshrc`:

```shell
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
    tmux attach-session -t default 2>/dev/null || tmux new-session -s default
fi
```

Switch themes before launching tmux:

```shell
export TMUX_THEME=nord
tmux
```

or

```shell
export TMUX_THEME=onedark
tmux
```
