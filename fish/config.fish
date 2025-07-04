if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim nvim
alias home "cd ~/"

# Load fnm (fast node manager)
set -gx PATH $HOME/.fnm $PATH
fnm env --use-on-cd | source
