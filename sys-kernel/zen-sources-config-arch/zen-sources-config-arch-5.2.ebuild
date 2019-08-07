# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Zen kernel configuration from Arch Linux"
HOMEPAGE="http://ix.io"
SRC_URI="https://git.archlinux.org/svntogit/packages.git/plain/trunk/config?h=packages/linux-zen -> .config"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="=sys-kernel/zen-sources-${PV}"
BDEPEND=""

src_unpack() {
	mkdir -p ${P}
	cp ${DISTDIR}/.config ${P}/.config
}

src_configure() {
	sed -i 's:CONFIG_LOCALVERSION_AUTO=.*:CONFIG_LOCALVERSION_AUTO=n:g' .config
	touch .scmversion
}

src_install() {
	insinto /usr/src/linux-${PV}-zen0
	doins .config
	doins .scmversion
}
