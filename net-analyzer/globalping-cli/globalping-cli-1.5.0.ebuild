# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="Access a global network of probes without leaving your console."
HOMEPAGE="https://github.com/jsdelivr/globalping-cli/"

SRC_URI="https://github.com/jsdelivr/globalping-cli/archive/refs/tags/v${PV}.tar.gz -> ${PV}.tar.gz
		 https://github.com/netswig/gentoo-ebuild-globalping-cli-deps/releases/download/${P}-deps/${P}-deps.tar.xz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT+=" test"

src_compile() {
	go build . || die
}

src_install() {
	newbin ${PN} globalping
	einstalldocs
}
