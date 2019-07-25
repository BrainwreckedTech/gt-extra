# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="An oh-my-zsh shell theme based on the Powerline Vim plugin"
HOMEPAGE="https://github.com/caiogondim/bullet-train.zsh"
SRC_URI="http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

TF=${SRC_URI##*/}

src_unpack() {
	mkdir -p ${P}
	cp ${DISTDIR}/${TF} ${P}/${TF}
}

src_install() {
	insinto /usr/share/oh-my-zsh/themes
	doins ${TF}
}
