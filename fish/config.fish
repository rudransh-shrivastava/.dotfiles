if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim nvim
alias home "cd ~/"
alias ls eza
alias cat bat

# Load fnm (fast node manager)
set -gx PATH $HOME/.fnm $PATH
fnm env --use-on-cd | source

# tmux-sessionizer
if not contains $HOME/.local/scripts $PATH
    set PATH $PATH $HOME/.local/scripts/
end
bind \cf 'tmux-sessionizer'
bind \eh 'tmux-sessionizer -s 0\n'
bind \ej 'tmux-sessionizer -s 1\n'
bind \ek 'tmux-sessionizer -s 2\n'
bind \el 'tmux-sessionizer -s 3\n'

function vmrss
  if test (count $argv) -eq 0
    echo "Usage: vmrss <PID>"
    return 1
  end
  set pid $argv[1]
  if test -f "/proc/$pid/status"
    grep VmRSS /proc/$pid/status
  else
    echo "Process with PID $pid not found."
    return 1
  end
end


# pnpm
set -gx PNPM_HOME "/home/psyduck/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
