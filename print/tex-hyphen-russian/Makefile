# $NetBSD: Makefile,v 1.14 2021/05/30 08:04:47 markd Exp $

DISTNAME=	hyphen-russian
PKGNAME=	tex-${DISTNAME}-2021
TEXLIVE_REV=	58609

MAINTAINER=	minskim@NetBSD.org
COMMENT=	Hyphenation patterns for Russian
LICENSE=	lppl-1.3c

DEPENDS+=	tex-hyph-utf8-[0-9]*:../../print/tex-hyph-utf8
DEPENDS+=	tex-hyphen-base-[0-9]*:../../print/tex-hyphen-base
DEPENDS+=	tex-ruhyphen>=1.6:../../print/tex-ruhyphen

TEX_HYPHEN_DAT+=	russian loadhyph-ru.tex
TEX_HYPHEN_DEF+=	\\addlanguage{russian}{loadhyph-ru.tex}{}{2}{2}
TEX_HYPHEN_LUA+=	['russian']={ \
			  loader='loadhyph-ru.tex', \
			  lefthyphenmin=2, \
			  righthyphenmin=2, \
			  synonyms={}, \
			  patterns='hyph-ru.pat.txt', \
			  hyphenation='hyph-ru.hyp.txt', \
			},

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
