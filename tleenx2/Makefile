# $NetBSD$
#

DISTNAME=	TleenX2-20040214
PKGNAME=	tleenx2-20040214
PKGREVISION=	1
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tleenx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tleenx.sourceforge.net/
COMMENT=	Client to tlen.pl - polish IM / chat system

PKG_DESTDIR_SUPPORT=	none

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
LIBS+=			-lm

.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/scrnsaverproto/buildlink3.mk"
.include "../../chat/libtlen/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
