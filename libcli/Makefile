# $NetBSD$
#

DISTNAME=	libcli-1.8.8
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libcli/}

MAINTAINER=	haaaad@gmail.com
HOMEPAGE=	http://libcli.sourceforge.net/

COMMENT="Provides a shared library for including a Cisco-like CLI."

PKG_DESTDIR_SUPPORT=	none

USE_LANGUAGES+=	c

WRKSRC=			${WRKDIR}/${DISTNAME}

INSTALLATION_DIRS=	lib share/examples

post-extract:
	        ${CHMOD} -R a+r ${WRKSRC}/Doc

post-install:
	        ${CHMOD} ${SHAREMODE} ${PREFIX}/include/libcli.h

.include "../../mk/bsd.pkg.mk"
