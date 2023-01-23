# Gnome for epitech install ✨
Script to reinstall gnome desktop graphic environement for dump of epitech fedora.
 
last time tested: 
23/01/2023

<h2>Before start</h2>


```
your computer will be restarted 15seconds after the installation success
```

```
After next to the login script chose GNOME option to change desktop environement.
```

<h2>after install</h2>

Installation of Nvidia driver

```
dnf install dnf-plugins-core -y
dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
dnf install nvautoinstall -y
```

pour les buttons maximize et minimize: 
```
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
```
pour desactiver les son (clavier)

```
gsettings set org.gnome.desktop.sound event-sounds false
```

pour les icones sur le desktop:
```
sudo dnf install nemo
```
```
sudo emacs ~/.config/autostart/nemo-autostart-with-gnome.desktop
```
ou nano :
```
sudo nano ~/.config/autostart/nemo-autostart-with-gnome.desktop
```

et copier coller : 
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

<h2>extensions gnome : (WIP)</h2>

https://extensions.gnome.org/extension/1160/dash-to-panel/

https://extensions.gnome.org/extension/3193/blur-my-shell/

https://extensions.gnome.org/extension/1160/dash-to-panel/

https://extensions.gnome.org/extension/4470/media-controls/

https://extensions.gnome.org/extension/841/freon/

https://extensions.gnome.org/extension/1085/simple-net-speed/



things to do :
+ add usefull gnome extensions
+ give idea
