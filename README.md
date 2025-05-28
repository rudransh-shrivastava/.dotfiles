# Mask wifi & bluetooth
Mask wifi and bluetooth radio power, tlp should manage it

```bash
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
```
