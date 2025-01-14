# Zima Blue

Zima Blue is my custom [Universal Blue][ublue] image.

The name comes from a fantastic episode of [Love, Death &
Robots][ldr-zima-blue].

> [!IMPORTANT]
> Zima Blue is a custom image containing all of the utilities and such that I
> find useful.
> Please do not complain about there being too many things installed by default.

> [!WARNING]
> This is intended for personal use, so your mileage may vary.

## Features

Instead of a complete desktop environment, Zima Blue comes with the
[Hyprland](https://hyprland.org/) tiling compositor for Wayland.

Here is a quick highlight of the applications installed by default:

| Program            | Purpose                                                |
|--------------------|--------------------------------------------------------|
| Hyprland           | The window manager.                                    |
| Kitty              | Terminal emulator.                                     |
| Dunst              | Notification daemon.                                   |
| Waybar             | Status bar.                                            |
| Pipewire           | Makes noises 'n stuff.                                 |
| XDG Desktop Portal | Helps make using only a window manager less annoying.  |
| polkit-kde-agent   | Authentication agent.                                  |
| Emacs              | Great operating system. Terrible text editor.          |
| Neovim             | Great text editor. Terrible operating system.          |
| Helix              | Another text editor, with better keybindings than vim. |
| Starship           | For pretty terminal prompts.                           |
| zsh                | I can't believe it's not bash!                         |
| Tailscale          | VPN-ish.                                               |

A complete list of what gets installed can be found in
[`config/recipe.yml`](https://github.com/nesv/zima-blue/blob/live/config/recipe.yml).

## Installation

Rebase your system to the unsigned image.
This will get the proper signing keys and policies installed:

```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/nesv/zima-blue:latest
```

Reboot to complete the rebase:

```
systemctl reboot
```

Rebase to the signed image:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/nesv/zima-blue:latest
```

Reboot one last time to complete the installation:

```
systemctl reboot
```

## This seems snazzy. How can I make my own?

See the [Make Your Own][ublue-make-your-own] page in the uBlue documentation.

## Notes

### Framework 13

This was built with my Intel-based [Framework][framework] 13 laptop in mind.

Once booted up, run:

```
just framework-13
```

then reboot:

```
systemctl reboot
```

[ublue]: https://universal-blue.org
[ldr-zima-blue]: https://www.imdb.com/title/tt9788510/
[ublue-make-your-own]: https://universal-blue.org/tinker/make-your-own/
[framework]: https://frame.work
