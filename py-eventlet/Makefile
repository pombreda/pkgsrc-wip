# $NetBSD$

DISTNAME=	eventlet-0.16.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/e/eventlet/

MAINTAINER= 	kamel.derouiche@gmail.com
HOMEPAGE=	http://eventlet.net/
COMMENT=	High performance network library using coroutines
LICENSE=	mit

WRKSRC=		${WRKDIR}/eventlet-0.16.1

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-greenlet>=0.4.1:../../devel/py-greenlet
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
