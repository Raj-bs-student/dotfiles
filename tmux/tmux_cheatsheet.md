# Tmux Cheatsheet

## Prefix

Your prefix is `Alt + Space`.

## Keybindings

| Keybinding | Description |
|---|---|
| `Prefix + I` | Install new plugins (via tpm). |
| `Prefix + p` | Toggle floating pane (via tmux-floax). |
| `Prefix + o` | Open sessionx window (via tmux-sessionx). |
| `Ctrl + y` | New window with zoxide (via tmux-sessionx). |
| `Prefix + y` | Yank to system clipboard (via tmux-yank). |
| `Prefix + Esc` | Enter copy mode. |
| `Prefix + Ctrl-r` | Restore tmux environment (via tmux-resurrect). |
| `Prefix + Ctrl-s` | Save tmux environment (via tmux-resurrect). |
| `Prefix + U` | Open URL's in browser (via tmux-fzf-url). |
| `Prefix + F` | Open fzf file finder (via tmux-fzf). |
| `Prefix + Space` | Open tmux-thumbs file picker. |
| `Prefix + r` | Rename the current window. |
| `Prefix + R` | Reload the tmux configuration. |
| `Prefix + s` | Split the window vertically. |
| `Prefix + v` | Split the window horizontally. |
| `Prefix + h` | Select the pane to the left. |
| `Prefix + j` | Select the pane below. |
| `Prefix + k` | Select the pane above. |
| `Prefix + l` | Select the pane to the right. |
| `Prefix + ,` | Resize pane left by 20. |
| `Prefix + .` | Resize pane right by 20. |
| `Prefix + -` | Resize pane down by 7. |
| `Prefix + =` | Resize pane up by 7. |
| `Prefix + :` | Open the command prompt. |
| `Prefix + *` | Toggle synchronize panes. |
| `Prefix + P` | Toggle pane border status. |
| `Prefix + c` | Kill the current pane. |
| `Prefix + x` | Swap the current pane with the next. |
| `Prefix + S` | Choose a session. |
| `Prefix + K` | Clear the screen. |
| `v` (in copy mode) | Begin selection. |
| `Prefix + H` | Previous window. |
| `Prefix + L` | Next window. |
| `Prefix + ^X` | Lock the server. |
| `Prefix + ^C` | New window in home directory. |
| `Prefix + ^D` | Detach from the session. |
| `Prefix + *` | List clients. |
| `Prefix + ^A` | Last window. |
| `Prefix + ^W` | List windows. |
| `Prefix + w` | List windows. |
| `Prefix + z` | Zoom/unzoom the current pane. |
| `Prefix + ^L` | Refresh the client. |
| `Prefix + l` | Refresh the client. |
| `Prefix + |` | Split the window. |
| `Prefix + "` | Choose a window. |

## Settings

*   **Mouse Mode:** On
*   **Key Mode:** VI
*   **Window Index:** Starts at 1
*   **History Limit:** 1,000,000 lines
*   **Default Shell:** nu