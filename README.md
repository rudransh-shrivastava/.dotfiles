# Mask wifi & bluetooth
Mask wifi and bluetooth radio power, tlp should manage it

```bash
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
```

# Symlinks
```
ln -s ~/repos/.dotfiles/.gitconfig ~/
ln -s ~/repos/.dotfiles/.tmux.conf ~/
ln -s ~/repos/.dotfiles/fish/ ~/.config/
ln -s ~/repos/.dotfiles/ghostty/ ~/.config/
ln -s ~/repos/.dotfiles/i3blocks/ ~/.config/
ln -s ~/repos/.dotfiles/i3/ ~/.config/
ln -s ~/repos/.dotfiles/nvim/ ~/.config/
ln -s ~/repos/.dotfiles/picom/ ~/.config/
ln -s ~/repos/.dotfiles/scripts/ ~/.local/
```
