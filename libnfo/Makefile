# $NetBSD$

DISTNAME=	libnfo-1.0.0
CATEGORIES=	multimedia
MASTER_SITES=	http://libnfo.geexbox.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jrbleboss@gmail.com
HOMEPAGE=	http://libnfo.geexbox.org/
COMMENT=	Library used to parse and write NFO files
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	gmake pkg-config

CONFIGURE_ARGS+= --prefix=${PREFIX}

HAS_CONFIGURE=yes

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
