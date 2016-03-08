# renew-dhcp-if-needed

## Install

```bash
sudo cp renew-dhcp-if-needed /usr/local/bin/
sudo cp com.mikewhy.renewdhcp.plist /Library/LaunchDaemons/
sudo launchctl load -w /Library/LaunchDaemons/com.mikewhy.renewdhcp.plist
```

## Uninstall

```bash
sudo launchctl unload -w /Library/LaunchDaemons/com.mikewhy.renewdhcp.plist
sudo rm /Library/LaunchDaemons/com.mikewhy.renewdhcp.plist
```
