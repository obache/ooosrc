# $NetBSD: Makefile,v 1.21 2021/05/24 19:54:22 wiz Exp $

DISTNAME=	znapzend-0.20.0
PKGREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=oetiker/}

MAINTAINER=	wiedi@frubar.net
HOMEPAGE=	https://github.com/oetiker/znapzend/
COMMENT=	ZFS send/receive backup system
LICENSE=	gnu-gpl-v3

GITHUB_TAG=	v${PKGVERSION_NOREV}

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	perl gmake autoreconf autoconf automake

TEST_TARGET=	check

DEPENDS+=	p5-Mojolicious>=6.46:../../www/p5-Mojolicious
DEPENDS+=	p5-Mojo-IOLoop-ForkCall>=0.17:../../devel/p5-Mojo-IOLoop-ForkCall
DEPENDS+=	p5-Scalar-List-Utils>=1.45:../../devel/p5-Scalar-List-Utils

pre-configure:
	cd ${WRKSRC} && autoreconf --force --install --verbose --make


.include "../../mk/bsd.pkg.mk"
