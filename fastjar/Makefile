# $NetBSD: Makefile,v 1.19 2014/10/09 14:05:51 wiz Exp $
#

DISTNAME=	fastjar-0.98
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fastjar/}
MASTER_SITES+=	http://download.savannah.gnu.org/releases/fastjar/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://fastjar.sourceforge.net/
HOMEPAGE=	https://savannah.nongnu.org/projects/fastjar
COMMENT=	C language version of the 'jar' archiver normally used by Java
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	YES

INFO_FILES=	YES
INSTALLATION_DIRS=	${PKGMANDIR}/man1

post-install:
	${INSTALL_MAN} ${WRKSRC}/fastjar.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/grepjar.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
