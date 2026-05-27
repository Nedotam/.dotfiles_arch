# dotfiles_arch — Restoring Symlinks

All config files are managed with [GNU Stow](https://www.gnu.org/software/stow/manual/). Each subdirectory is a "package" containing the full path from `~`.

## After cloning on a new machine

```bash
cd ~/.dotfiles_arch
stow -t ~ aether
stow -t ~ apps
stow -t ~ browser
stow -t ~ fastfetch
stow -t ~ hypr
stow -t ~ ohmyposh
stow -t ~ swayosd
stow -t ~ uwsm
stow -t ~ walker
stow -t ~ waybar
stow -t ~ zshrc
```

Or all at once:

```bash
for pkg in */; do
  stow -t ~ "$pkg"
done
```

## Removing symlinks

```bash
cd ~/.dotfiles_arch
stow -D -t ~ <package-name>
```

## After editing a live config

Edits go directly into the tracked repo file since all paths are symlinks. Just `git commit` and push.

## Notes

- `extra/` is not stowed — it's a reference folder for package lists.
- Large background images are excluded from git (`.gitignore`). Place them manually at `~/.config/current-theme/background` or `~/.config/aether/theme/backgrounds/`.

## Required programs

These packages are expected on the system for the config to work. Install them with `sudo pacman -S` (official) or `paru -S` (AUR).

### System essentials (pacman)

```
base base-devel git stow zsh
firefox discord signal-desktop thunderbird
hyprland hypridle hyprlock hyprsunset hyprpicker
waybar swaybg swayosd swaync
uwsm fcitx5 fcitx5-gtk fcitx5-qt
nm-applet blueman bluetui
polkit-gnome nautilus kitty ghostty
btop fastfetch pavucontrol
grim slurp wl-clipboard wf-recorder
pipewire pipewire-pulse wireplumber
playerctl pamixer jq
kvantum-qt5 qt5-wayland
noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
ttf-jetbrains-mono-nerd ttf-cascadia-mono-nerd
xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
neovim python rust go nodejs
docker docker-compose
sudo snapper btrfs-progs
mise uv
eza bat ripgrep fd fzf zoxide yazi
starship oh-my-posh
stow less man-db
obs-studio kdenlive mpv imv
steam gamemode lib32-gamemode mangohud
gpu-screen-recorder
```

### AUR packages

```
aether
brave-bin
dropbox dropbox-cli nautilus-dropbox
localsend
oh-my-posh
paru
spotify
visual-studio-code-bin
xdg-terminal-exec
yaru-icon-theme
1password-beta 1password-cli
protonup-qt-bin
heroic-games-launcher-bin
```

### Fonts (optional)

- `ttf-ia-writer` (AUR)
- `ttf-times-new-roman` (AUR)
- `woff2-font-awesome` (pacman)

See `extra/aur_packages.txt` and `extra/installed_packages.txt` for the full list.
