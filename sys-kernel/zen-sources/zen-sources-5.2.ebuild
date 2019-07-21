# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

K_PREPATCHED="yes"
UNIPATCH_STRICTORDER="yes"
K_SECURITY_UNSUPPORTED="1"
K_DEBLOB_AVAILABLE=0
CKV="${PV/99/}"

ETYPE="sources"

EGIT_COMMIT="v${PV/.9999/}-zen1"
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/zen-kernel/zen-kernel.git"

inherit kernel-2 git-r3
detect_version

K_NOSETEXTRAVERSION="don't_set_it"
DESCRIPTION="The Zen Kernel Release Sources"
HOMEPAGE="https://github.com/zen-kernel"

IUSE=""
SLOT=0
KEYWORDS="~x86 ~amd64"

EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${KV_FULL}"

K_EXTRAEINFO="For more info on zen-sources, and for how to report problems, see: \
${HOMEPAGE}, also go to #zen-sources on freenode"

pkg_setup(){
	ewarn "You are about to install a kernel that is unsupported by."
	ewarn "both Gentoo and the upstream developers.  Use it at your"
        ewarn "own risk and don't bite anyone if your system explodes."
	kernel-2_pkg_setup
}
