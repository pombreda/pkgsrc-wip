# $NetBSD$
#

DISTNAME=	lde-2.6.0
WRKSRC=		${WRKDIR}/lde
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lde/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://lde.sourceforge.net
COMMENT=	Curses based file system viewer/editor for Linux

PKG_DESTDIR_SUPPORT=	none

USE_NCURSES=	YES # missing function termname
GNU_CONFIGURE=	YES
USE_TOOLS+=	gmake
CONFIGURE_ARGS+=--with-ncurses=${PREFIX:Q} \
		--disable-root-sbin

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
LIBS=		-lcompat
.endif

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
