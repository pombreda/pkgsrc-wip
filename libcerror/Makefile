# $NetBSD$
#

DATESTAMP=	20140105
DISTNAME=	libcerror-alpha-${DATESTAMP}
PKGNAME=	${DISTNAME:S/-alpha//1}
CATEGORIES=	devel
MASTER_SITES=	https://googledrive.com/host/0B3fBvzttpiiSV2xnMTZjSk5WVTg/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://code.google.com/p/libcerror/
COMMENT=	Library for cross-platform C error functions
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/libcerror-${DATESTAMP}
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	msgfmt msgmerge pkg-config xgettext

PKGCONFIG_OVERRIDE+=	libcerror.pc.in

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
