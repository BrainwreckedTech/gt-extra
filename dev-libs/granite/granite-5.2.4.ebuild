# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_MIN_API_VERSION=0.40

inherit meson gnome2-utils vala

DESCRIPTION="Elementary OS library that extends Gtk+"
HOMEPAGE="https://github.com/elementary/granite"
SRC_URI="https://github.com/elementary/granite/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="demo nls test"

RDEPEND="
	dev-libs/glib:2
	dev-libs/libgee:0.8[introspection]
	>=x11-libs/gtk+-3.22:3[introspection]
"
DEPEND="${RDEPEND}
	>=dev-lang/vala-0.40.0
	nls? ( sys-devel/gettext )
	virtual/pkgconfig
"


src_prepare() {

	# Disable building of the demo application (if needed)
	use demo || sed -i "s:^\(subdir('demo')\):#\1:g" meson.build

	# Disable generation of the translations (if needed)
	use nls || sed -i "s:^\(subdir('po')\):#\1:g" meson.build

	vala_src_prepare
	eapply_user
}

src_configure() {
	meson_src_configure
}

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
