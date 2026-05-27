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
