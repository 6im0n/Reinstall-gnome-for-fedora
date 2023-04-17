# Gnome for epitech install ✨
Script to reinstall gnome desktop graphic environement for dump of epitech fedora.
 
Last time tested: 
23/01/2023

<h2>Before start</h2>


```
Your computer will be restarted 15seconds after the installation success
```

```
After next to the login script chose GNOME option to change desktop environement.
```

<h2>After install</h2>

Installation of Nvidia driver

```
dnf install dnf-plugins-core -y
dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
dnf install nvautoinstall -y
sudo nvautoinstall rpmadd
sudo nvautoinstall nvrepo
sudo nvautoinstall driver
sudo nvautoinstall plcuda
```
More detail at : https://github.com/t0xic0der/nvidia-auto-installer-for-fedora-linux


Pour les buttons maximize et minimize: 
```
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
```
Pour desactiver les son (clavier)

```
gsettings set org.gnome.desktop.sound event-sounds false
```

Pour les icones sur le desktop:
```
sudo dnf install nemo
```
```
sudo emacs ~/.config/autostart/nemo-autostart-with-gnome.desktop
```
Ou nano :
```
sudo nano ~/.config/autostart/nemo-autostart-with-gnome.desktop
```

Et copier coller : 
```[Desktop Entry]
Type=Application
Name=Nemo
Comment=Start Nemo desktop at log in
Exec=nemo-desktop
OnlyShowIn=GNOME;
AutostartCondition=GSettings org.nemo.desktop show-desktop-icons
X-GNOME-AutoRestart=true
NoDisplay=true
```

<h2>Extensions gnome : (WIP)</h2>

https://extensions.gnome.org/extension/1160/dash-to-panel/

https://extensions.gnome.org/extension/3193/blur-my-shell/

https://extensions.gnome.org/extension/4470/media-controls/

https://extensions.gnome.org/extension/4033/x11-gestures/

with 
```
$ dnf install touchegg
# You also need to manually start the service
$ sudo systemctl start touchegg
$ sudo systemctl enable touchegg
```

https://extensions.gnome.org/extension/841/freon/

https://extensions.gnome.org/extension/1085/simple-net-speed/



Things to do :
+ add usefull gnome extensions
+ automatic installer for the basic extension (https://github.com/brunelli/gnome-shell-extension-installer)
+ give idea
