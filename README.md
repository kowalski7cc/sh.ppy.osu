# osu! flatpak

The bestest free-to-win rhythm game. Rhythm is just a click away!

## Prerequisites

- flatpak with Flathub repository (setup guide at [Flathub website](https://flatpak.org/setup/))
- flatpak-builder
- make (optional)

```bash
# Fedora
sudo dnf install make flatpak-builder

# Ubuntu
sudo apt install make flatpak-builder
```

You will need the following platforms installed:

- org.freedesktop.Platform
- org.freedesktop.Sdk
- org.freedesktop.Sdk.Extension.dotnet5

```bash
flatpak install org.freedesktop.Platform org.freedesktop.Sdk org.freedesktop.Sdk.Extension.dotnet5
```

## Building

```bash
make
```

or if you don't have make installed

```bash
flatpak-builder --ccache --force-clean --state-dir=build/flatpak-builder --repo=build/flatpak-repo build/flatpak-target sh.ppy.osu.yaml
```

## Installing

```bash
make install
```

or if you don't have make installed

```bash
flatpak install --reinstall --or-update -y --user ./build/flatpak-repo sh.ppy.osu
```

## Export bundle

```bash
make dist
```

or if you don't have make installed

```bash
flatpak build-bundle build/flatpak-repo sh.ppy.osu.flatpak sh.ppy.osu
```
