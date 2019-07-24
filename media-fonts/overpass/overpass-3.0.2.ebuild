# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="An open source webfont family inspired by Highway Gothic."
HOMEPAGE="http://overpassfont.org"
SRC_URI="https://github.com/RedHatBrand/${PN^}/releases/download/${PV}/${PN}-desktop-fonts.zip"

LICENSE="|| ( OFL-1.1 LGPL-2.1 )"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT="0"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

FONT_SUFFIX="otf"
S="${WORKDIR}"

src_install() {
  insinto /usr/share/fonts/${PN}
  doins ${PN}/*
  insinto /usr/share/fonts/${PN}-mono
  doins ${PN}-mono/*
}
