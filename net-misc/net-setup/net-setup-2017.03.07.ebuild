# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="CLI dialog-based helper to set up network interfaces"
HOMEPAGE="https://wiki.gentoo.org/wiki/Project:LiveCD"
SRC_URI="https://gitweb.gentoo.org/proj/livecd-tools.git/plain/net-setup -> net-setup"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND="dev-util/dialog"
BDEPEND=""

src_unpack() {
	mkdir -p ${P}
	cp ${DISTDIR}/${PN} ${P}/${PN}
}

src_install() {
	dobin ${PN}
}
