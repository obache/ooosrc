# $NetBSD: Makefile,v 1.54 2021/04/21 13:25:03 adam Exp $

DISTNAME=	sweeper-16.12.0
PKGREVISION=	21
CATEGORIES=	sysutils
COMMENT=	KDE system cleaner
MASTER_SITES=	${MASTER_SITE_KDE:=applications/16.12.0/src/}

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
