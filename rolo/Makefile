# $NetBSD$
#

DISTNAME=		rolo-011
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rolo/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://rolo.sourceforge.net/
COMMENT=		Text-based contact manager

PKG_DESTDIR_SUPPORT=	none

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

.include "../../devel/ncurses/buildlink3.mk"
.include "../../wip/libvc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
