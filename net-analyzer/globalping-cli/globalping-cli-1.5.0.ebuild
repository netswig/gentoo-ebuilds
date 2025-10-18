# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="Access a global network of probes without leaving your console."
HOMEPAGE="https://github.com/jsdelivr/globalping-cli/"

EGO_SUM=(
	"github.com/andybalholm/brotli v1.1.1"
	"github.com/andybalholm/brotli v1.1.1/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/go-ole/go-ole v1.2.6/go.mod"
	"github.com/go-ole/go-ole v1.3.0"
	"github.com/go-ole/go-ole v1.3.0/go.mod"
	"github.com/icza/backscanner v0.0.0-20241124160932-dff01ac50250"
	"github.com/icza/backscanner v0.0.0-20241124160932-dff01ac50250/go.mod"
	"github.com/icza/mighty v0.0.0-20180919140131-cfd07d671de6"
	"github.com/icza/mighty v0.0.0-20180919140131-cfd07d671de6/go.mod"
	"github.com/inconshreveable/mousetrap v1.1.0"
	"github.com/inconshreveable/mousetrap v1.1.0/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/mattn/go-runewidth v0.0.16"
	"github.com/mattn/go-runewidth v0.0.16/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rivo/uniseg v0.4.7"
	"github.com/rivo/uniseg v0.4.7/go.mod"
	"github.com/rogpeppe/go-internal v1.9.0"
	"github.com/rogpeppe/go-internal v1.9.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/shirou/gopsutil v3.21.11+incompatible"
	"github.com/shirou/gopsutil v3.21.11+incompatible/go.mod"
	"github.com/spf13/cobra v1.8.1"
	"github.com/spf13/cobra v1.8.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/tklauser/go-sysconf v0.3.14"
	"github.com/tklauser/go-sysconf v0.3.14/go.mod"
	"github.com/tklauser/numcpus v0.9.0"
	"github.com/tklauser/numcpus v0.9.0/go.mod"
	"github.com/xyproto/randomstring v1.0.5"
	"github.com/xyproto/randomstring v1.0.5/go.mod"
	"github.com/yusufpapurcu/wmi v1.2.4"
	"github.com/yusufpapurcu/wmi v1.2.4/go.mod"
	"go.uber.org/mock v0.4.0"
	"go.uber.org/mock v0.4.0/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.1.0/go.mod"
	"golang.org/x/sys v0.29.0"
	"golang.org/x/sys v0.29.0/go.mod"
	"golang.org/x/term v0.28.0"
	"golang.org/x/term v0.28.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	)
go-module_set_globals

SRC_URI="https://github.com/jsdelivr/globalping-cli/archive/refs/tags/v${PV}.tar.gz -> ${PV}.tar.gz
	     ${EGO_SUM_SRC_URI}"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT+=" test"

#src_prepare() {
#	use riscv && eapply "${DISTDIR}"/${PN}-riscv.patch
#	eapply_user
#}

src_compile() {
	go build . || die
}

src_install() {
	dobin ${PN}
	einstalldocs
}
