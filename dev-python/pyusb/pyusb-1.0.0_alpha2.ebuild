# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyusb/pyusb-1.0.0_alpha1.ebuild,v 1.2 2011/03/05 22:21:06 arfrever Exp $

EAPI="3"
PYTHON_DEPEND="*:2.5"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="*-jython"

inherit distutils

MY_P="${P/_alpha/a}"
MY_V="${MY_P/${PN}-}"

DESCRIPTION="USB support for Python."
HOMEPAGE="http://pyusb.sourceforge.net/"
SRC_URI="https://github.com/walac/pyusb/tarball/${MY_V} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

### This version is compatible with both 0.X and 1.X versions of libusb
DEPEND="virtual/libusb:1"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_V}"

PYTHON_MODNAME="usb"

src_compile() {
	S=$(ls -d $WORKDIR/*/)
	cd "$S"
}

src_test() {
	cd tests

	testing() {
		PYTHONPATH="../build-${PYTHON_ABI}/lib" "$(PYTHON)" testall.py
	}
	python_execute_function testing
}
