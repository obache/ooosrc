# $NetBSD: Makefile,v 1.16 2021/04/24 08:31:29 wiz Exp $

DISTNAME=	mh-6.8.4-JP-3.05
PKGNAME=	ja-mh6-3.05
PKGREVISION=	1
CATEGORIES=	japanese mail
#MASTER_SITES=	ftp://ftp.chem.eng.himeji-tech.ac.jp/pub/net/mh/

#PATCH_SITES=	ftp://ftp.chem.eng.himeji-tech.ac.jp/pub/net/mh/mh-6.8.4-JP-3.05-patch/
PATCHFILES=	mh-6.8.4-JP-3.05-20030114.patch.gz \
		mh-6.8.4-JP-3.05-20030326.patch.gz \
		mh-6.8.4-JP-3.05-20031023.patch.gz \
		mh-6.8.4-JP-3.05-20031106.patch.gz

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://media.laic.u-hyogo.ac.jp/%7Ehayashi/internet/mh-plus.html
COMMENT=	Rand MH mail handling system + Japanese patches

NOT_FOR_BULK_PLATFORM=	Linux-*-*

DEPENDS+=	ja-less>=332:../../misc/ja-less

CONFLICTS=	nmh-[0-9]* ja-mh-*_JP_*

.include "../../mk/bsd.prefs.mk"

MAKE_JOBS_SAFE=		NO
MANCOMPRESSED=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-batchmode
CONFIGURE_ARGS+=	--libexecdir=${PREFIX:Q}/libexec/mh
CONFIGURE_ARGS+=	--enable-jmandir=${PREFIX:Q}/${PKGMANDIR:Q}/ja_JP.eucJP
CONFIGURE_ARGS+=	--enable-apop=${PKG_SYSCONFDIR:Q}/pop.auth
CONFIGURE_ARGS+=	--enable-rpop

# m_getfld.c: In function 'm_unknown':
# m_getfld.c:683:9: error: array subscript has type 'char' [-Werror=char-subscripts]
#   pat_map[*cp] = (unsigned char *)cp;
# Maybe fix this later.
BUILDLINK_TRANSFORM+=	rm:-Werror=char-subscripts

INSTALLATION_DIRS=	bin lib

post-install:
	${LN} -sf libmh.so.3.2 ${DESTDIR}${PREFIX}/lib/libmh.so.3

SPECIAL_PERMS+=	bin/inc ${SETUID_ROOT_PERMS}
SPECIAL_PERMS+=	bin/msgchk ${SETUID_ROOT_PERMS}
.if !empty(OPSYS:M*BSD*) || !empty(OPSYS:MDragonFly)
SPECIAL_PERMS+=	libexec/mh/rcgtty ${REAL_ROOT_USER} tty 2555
.endif

.include "../../mk/bsd.pkg.mk"
