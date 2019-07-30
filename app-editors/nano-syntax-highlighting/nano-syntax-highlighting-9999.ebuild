# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Improved Nano Syntax Highlighting Files "
HOMEPAGE="https://github.com/scopatz/nanorc"

EGIT_REPO_URI="https://github.com/scopatz/nanorc.git"
EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

DEPEND=""
RDEPEND="app-editors/nano"

src_install() {
        insinto /usr/share/${PN}
	doins *.nanorc
}

pkg_postinst() {
	elog The nanorc files were installed to /usr/share/${PN}
	elog Add the ones you want to your nano configuration file
	elog   system-wide: $ echo "include /usr/share/nano-syntax-highlighting/*.nanorc" >> /etc/nanorc
	elog user-specific: $ echo "include /usr/share/nano-syntax-highlighting/*.nanorc" >> ~/.nanorc
}
