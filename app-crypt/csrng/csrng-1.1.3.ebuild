# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="csprng"
MY_P="${MY_PN}-${PV}"

DESCRIPTION=" Cryptographically secure pseudorandom number generator"
HOMEPAGE="http://code.google.com/p/csrng/"
SRC_URI="http://csrng.googlecode.com/files/${MY_P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"
