# $NetBSD$

DISTNAME=	trollius-1.0.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	https://pypi.python.org/packages/source/t/trollius/

HOMEPAGE=	https://bitbucket.org/enovance/trollius/
COMMENT=	Module asyncio, for writing single-threaded concurrent code
LICENSE=	apache-2.0

EGG_NAME=	${DISTNAME:S/-/_/}

DEPENDS+=	${PYPKGPREFIX}-futures-[0-9]*:../../wip/py-futures

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
