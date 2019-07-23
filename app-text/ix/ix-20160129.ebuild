# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A command line pastebin - shell"
HOMEPAGE="http://ix.io"
SRC_URI="http://ix.io/client -> ix"

LICENSE="unknown"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND="net-misc/curl"
BDEPEND=""

src_unpack() {
	mkdir -p ${P}
	cp ${DISTDIR}/ix ${P}/ix
}

src_install() {
	dobin ix
}
