# $NetBSD: Makefile,v 1.19 2021/05/24 19:54:39 wiz Exp $

DISTNAME=	Template-Plugin-Latex-3.12
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Template-Plugin-Latex
COMMENT=	Latex support for the Template Toolkit
LICENSE=	gnu-gpl-v2 # OR artistic

DEPENDS+=	p5-Template-Toolkit>=2.16:../../www/p5-Template-Toolkit
DEPENDS+=	p5-LaTeX-Driver>=0.07:../../print/p5-LaTeX-Driver
DEPENDS+=	p5-LaTeX-Encode>=0.02:../../print/p5-LaTeX-Encode
DEPENDS+=	p5-LaTeX-Table-[0-9]*:../../print/p5-LaTeX-Table
# TEST_DEPENDS
BUILD_DEPENDS+=	p5-Package-DeprecationManager-[0-9]*:../../devel/p5-Package-DeprecationManager

PERL5_PACKLIST=		auto/Template/Plugin/Latex/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
