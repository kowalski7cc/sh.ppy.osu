all:
	flatpak-builder --ccache --force-clean --state-dir=build/flatpak-builder --repo=build/flatpak-repo build/flatpak-target sh.ppy.osu.yaml
dist:
	flatpak build-bundle build/flatpak-repo sh.ppy.osu.flatpak sh.ppy.osu
clean:
	rm -rf build repo openttd *.flatpak .flatpak-builder
install:
	flatpak install --reinstall --or-update -y --user ./build/flatpak-repo sh.ppy.osu
run:
	flatpak run sh.ppy.osu
uninstall:
	flatpak uninstall --user sh.ppy.osu
