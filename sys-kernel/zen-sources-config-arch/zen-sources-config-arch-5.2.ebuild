 # Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Zen kernel configuration from Arch Linux"
HOMEPAGE=""
SRC_URI="x86? ( https://git.archlinux32.org/archlinux32/packages/raw/branch/master/extra/linux-zen/config -> .config32 )
         amd64? ( https://git.archlinux.org/svntogit/packages.git/plain/trunk/config?h=packages/linux-zen -> .config64 )"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="=sys-kernel/zen-sources-${PV}"
BDEPEND=""

src_unpack() {
	mkdir -p ${P}
	cp ${DISTDIR}/${A} ${P}/.config
}

src_configure() {
	sed -i 's:CONFIG_LOCALVERSION_AUTO=.*:CONFIG_LOCALVERSION_AUTO=n:g' .config
	sed -i 's:CONFIG_DEFAULT_HOSTNAME=.*:CONFIG_DEFAULT_HOSTNAME="gentoo":g' .config
	touch .scmversion
}

src_install() {
	insinto /usr/src/linux-${PV}-zen0
	doins .config
	doins .scmversion
}
