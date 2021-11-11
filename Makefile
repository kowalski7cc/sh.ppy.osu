all:
	flatpak-builder --ccache --force-clean --state-dir=build/flatpak-builder --repo=build/flatpak-repo build/flatpak-target sh.ppy.osulazer.yaml
	flatpak build-bundle build/flatpak-repo sh.ppy.osulazer.flatpak sh.ppy.osulazer
clean:
	rm -rf build repo openttd *.flatpak .flatpak-builder
install:
	flatpak install -y --user --bundle sh.ppy.osulazer.flatpak
run:
	flatpak run sh.ppy.osulazer
uninstall:
	flatpak uninstall --user sh.ppy.osulazer
