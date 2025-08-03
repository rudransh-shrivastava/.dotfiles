if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim nvim
alias home "cd ~/"
alias ls eza

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
