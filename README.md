### ARCH - HYPRLAND configs

colors: https://catppuccin.com/palette/ <br/>
swaync from: https://github.com/cebem1nt/dotfiles/tree/main/.config/swaync

Packages needed:

```bash
sudo pacman -S \
hyprland \
xdg-desktop-portal-hyprland \
hyprpaper \
hypridle \
hyprlock \
rofi-wayland \
dunst \
swaync \
kitty \
wl-clipboard \
cliphist \
grim \
satty \
slurp \
swappy \
wtype \
brightnessctl \
playerctl \
pamixer \
pavucontrol \
network-manager-applet \
blueman \
bluez \
bluez-utils \
xfce-polkit \
qt5-wayland \
qt6-wayland \
xdg-utils
```
```bash
sudo pacman -S \
pipewire \
wireplumber \
pipewire-pulse \
pipewire-alsa \
pipewire-jack
```
```bash
sudo pacman -S \
thunar \
thunar-archive-plugin \
file-roller \
gvfs \
gvfs-mtp \
ffmpegthumbnailer \
tumbler \
loupe \
neovim \
flatpack
```
```bash
sudo pacman -S \
ttf-jetbrains-mono-nerd \
noto-fonts \
noto-fonts-cjk \
noto-fonts-emoji
```
```bash
sudo pacman -S \
kvantum \
qt5ct \
qt6ct \
papirus-icon-theme \
catppuccin-gtk-theme-mocha
```
```bash
sudo pacman -S \
starship \
eza \
bat \
zoxide \
fd \
ripgrep \
fastfetch \
git \
jq \
fzf \
btop \
unzip \
zip \
wget \
curl
```

```bash
systemctl --user enable --now pipewire wireplumber
```