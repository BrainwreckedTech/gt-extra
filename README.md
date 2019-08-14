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

### fonts

- media-fonts/digital_7 (synced to [jm-overlay])
  > Font that mimicks LCD displays like those in digital clocks
- media-fonts/[overpass] (referenced from [soft] and [luke-jr])
  > An open source web font family inspired by Highway Gothic

[jm-overlay]: https://github.com/Jannis234/jm-overlay
[overpass]: https://github.com/RedHatBrand/Overpass/releases
[soft]: https://bitbucket.org/Soft/overlay
[luke-jr]: https://scm.dashjr.org/scmroot/git/portage-overlays/luke-jr

### kernels

- sys-kernel/[zen-sources] (modified from [gentoo])
  > Get current zen-sources as Gentoo stopped providing this kernel
- sys-kernel/zen-sources-config-arch (gt-extra original)
  > Arch Linux's zen kernel configuration

[gentoo]: https://cgit.gentoo.org/repo/gentoo.git/
[zen-sources]: https://github.com/zen-kernel/zen-kernel

### pantheon-files

The following packages are necessary to get `pantheon-files` installed.
These packages are referenced from [gnome-next], which should be avoided
at all costs because it is evil.  Some changes were minimal while others
required work.

- dev-libs/[granite] (referenced 5.2.2 to provide 5.2.4)
- gnome-extra/[zeitgeist] (referenced 1.0.1 to provide 1.0.2)
- pantheon-base/[pantheon-files] (referenced 4.1.1 to provide 4.1.8)
- xfce-extra/[tumbler] (referenced 0.2.1 to provide 0.2.5)

[granite]: https://github.com/elementary/granite/releases
[zeitgeist]: https://launchpad.net/zeitgeist/+milestones
[pantheon-files]: https://github.com/elementary/files/releases
[tumbler]: https://archive.xfce.org/src/xfce/tumbler
[gnome-next]: https://github.com/Heather/gentoo-gnome

### pekwm

- x11-misc/[pekwm-menu] (gt-extra original)
  > Dynamic xdg menu creator for pekwm
- x11-misc/lightdm-slick-greeter (synced to [jorgicio])
  > A performant greeter for LightDM

[pekwm-menu]: https://bitbucket.org/nfisher1226/pekwm-menu/downloads
[jorgicio]: https://github.com/jorgicio/jorgicio-gentoo-overlay

### zsh

- app-misc/powerline (synced to [raiagent](https://github.com/leycec/raiagent))
  > Python-based statusline/prompt utility
- app-shells/oh-my-zsh (synced to [gentoo-zh](https://github.com/microcai/gentoo-zh))
  > An open source, community-driven framework for managing your zsh configuration
- app-shells/oh-my-zsh-bullet-train-theme (gt-extra original)
  > An oh-my-zsh theme based on the Powerline Vim plugin
- app-shells/zsh-syntax-highlighting (synced to [mv](https://cgit.gentoo.org/user/mv.git))
  > FISH-like syntax highlighting for ZSH
- app-shells/oh-my-zsh (synced to [gentoo-zh](https://github.com/microcai/gentoo-zh))
  > An open source, community-driven framework for managing your zsh configuration
- app-shells/zsh-syntax-highlighting (synced to [mv](https://cgit.gentoo.org/user/mv.git))
  > FISH-like syntax highlighting for ZSH
- app-vim/powerline-vim (synced to [raiagent](https://github.com/leycec/raiagent))
  > Vim plugin for Python-based Powerline

### miscellaneous

- app-editors/marker (synced to [jorgicio](https://github.com/jorgicio/jorgicio-gentoo-overlay))
  > A GTK-based Markdown editor
- app-editors/[nano-syntax-highlighting] (gt-extra original)
  > Extra syntax highlighting configs for nano
- app-text/[ix] (gt-extra original)
  > A commandline pastebin for shells
- net-misc/net-setup (gt-extra original)
  > CLI dialog-based helper to set up network connections
- www-client/lariza (referenced from [lanodanOverlay])
  > A simple web browser using GTK+ 3, GLib, and WebKit2GTK+

[nano-syntax-highlighting]: https://github.com/scopatz/nanorc
[ix]: http://ix.io/client
[lanodonOverlay]: https://hacktivis.me/git/overlay
