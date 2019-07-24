GT-Extra
========

This is just a personal overlay to add ebuilds from huge overlays that I don't want to use the entirety of.

To Use
------

1. Place `gt-extra.xml` in `/etc/layman/overlays`
2. Run `layman -o file:://etc/layman/overlays/gt-extra.xml`
3. Run `layman -L`
4. Run `layman -a gt-extra`

Ebuilds
-------

- app-editors/marker (synced to [jorgicio](https://github.com/jorgicio/jorgicio-gentoo-overlay))
  > A GTK-based Markdown editor
- app-text/ix (gt-extra original packaging)
  > A commandline pastebin for shells
- media-fonts/digital_7 (synced to [jm-overlay](https://github.com/Jannis234/jm-overlay))
  > Font that mimicks LCD displays like those in digital clocks
- media-fonts/overpass (referenced from [soft](https://bitbucket.org/Soft/overlay) and [luke-jr](https://scm.dashjr.org/scmroot/git/portage-overlays/luke-jr))
  > An open source web font family inspired by Highway Gothic
- net-misc/net-setup (gt-extra original packaging, from Gentoo LiveCD Project)
  > CLI dialog-based helper to set up network connections
- sys-kernel/zen-sources (modified from [gentoo](https://cgit.gentoo.org/repo/gentoo.git/))
  > Get current zen-sources as Gentoo stopped providing this kernel
- x11-misc/lightdm-slick-greeter (synced to [jorgicio](https://github.com/jorgicio/jorgicio-gentoo-overlay))
  > A performant greeter for LightDM
- x11-misc/pekwm-menu (gt-extra original packaging)
  > Dynamic xdg menu creator for pekwm

### pantheon-files

The following packages are necessary to get `pantheon-files` installed.
These packages are referenced from [gnome-next](https://github.com/Heather/gentoo-gnome),
which should be avoided at all costs because it is evil.
Some changes were minimal while others required work.

- dev-libs/granite (referenced 5.2.2 to provide 5.2.4)
- gnome-extra/zeitgeist (referenced 1.0.1 to provide 1.0.2)
- pantheon-base/pantheon-files (referenced 4.1.1 to provide 4.1.8)
- xfce-extra/tumbler (referenced 0.2.1 to provide 0.2.5)
