# Gnome for epitech install ✨
Script to reinstall gnome desktop graphic environement for dump of epitech fedora.
 
last time tested: 
17/10/2022

<h2>Before start</h2>


```
your computer will be restarted 15seconds after the installation success
```

<h2>Before start</h2>

```
After next to the login script chose GNOME option to change desktop environement.
```

<h2>after install</h2>

pour les buttons maximize et minimize: 
```
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
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

https://extensions.gnome.org/extension/6/applications-menu/

https://extensions.gnome.org/extension/615/appindicator-support/

https://extensions.gnome.org/extension/906/sound-output-device-chooser/

https://extensions.gnome.org/extension/1160/dash-to-panel/


things to do :
+ add usefull gnome extensions
+ give idea
