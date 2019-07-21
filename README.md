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

- app-editors/marker (pulled from [jorgicio](https://github.com/jorgicio/jorgicio-gentoo-overlay))
  > A GTK-based Markdown editor
- pantheon-base/pantheon-files (modified from [gnome-next](https://github.com/Heather/gentoo-gnome))
  > Avoid the evil `gnome-next` overlay at all costs
- sys-kernel/zen-sources (modified from [gentoo](https://cgit.gentoo.org/repo/gentoo.git/))
  > Get current zen-sources as Gentoo stopped providing this kernel
- x11-misc/lightdm-slick-greeter (pulled from [jorgicio](https://github.com/jorgicio/jorgicio-gentoo-overlay))
  > A performant greeter for LightDM
