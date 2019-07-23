# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Dynamic xdg menu creator for pekwm"
HOMEPAGE="https://bitbucket.org/nfisher1226/pekwm-menu"
SRC_URI="https://bitbucket.org/nfisher1226/pekwm-menu/downloads/pekwm-menu-0.5.0.tar.gz"

LICENSE="GPL-3"
KEYWORDS="~x86 ~amd64"

SLOT="0"

DEPEND="lxde-base/menu-cache x11-libs/gtk+:2"
RDEPEND="${DEPEND} ( lxde-base/lxmenu-data gnome-base/gnome-menus )"

src_install() {
    emake DESTDIR="${D}/usr" install
}
