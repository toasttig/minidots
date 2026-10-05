# minidots
an everforest rice with hyprland

# install
install pkgs first:
```
yay -S alacritty python-pywal nvim rofi sway swaync waybar
pipx install pywalfox # install python-pipx by sudo pacman -S python-pipx
```
then clone the repo:
```
git clone https://github.com/toasttig/minidots
```
backup your other config:
```
mv ~/.config ~/.config.bak
```
cd into the repo:
```
cd minidots
```
and now you can put the configs into your ```~/.config```:
```
cp -r alacritty nvim rofi swaync tofi waybar ~/.config
```
for the wallpaper switcher you need to chmod it and put it in ```~/.local/bin```
```
cp -r wallpaper-picker ~/.local/bin
chmod +x ~/.local/bin/wallpaper-picker
```
and that's it! have fun with minidots!!!

# screenshots
<img width="1920" height="1080" alt="scr1" src="https://github.com/user-attachments/assets/f05fe5ba-03de-4123-9d55-fa1c104db1f7" />

<img width="1917" height="1080" alt="1791179417" src="https://github.com/user-attachments/assets/8d9c643f-f4cb-4b4d-8f1f-f60585559513" />

# sum binds
u can check more binds in ```~/.config/sway```
| super | bind | app/script |
|----------|----------|---------|
| super   | return   | open alacritty |
| super   | d   |open rofi |
| super   | t   |open theme switcher |
| super   | s   | screenshot|
| super   | l   |lock|

