# $NetBSD$

DISTNAME=	cloudlib-0.3.0
PKGNAME=        ${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	https://pypi.python.org/packages/source/c/cloudlib/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/cloudnull/cloudlib
COMMENT=	General purpose library for in application use
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-requests>=2.5.0:../../devel/py-requests
.include "../../lang/python/egg.mk"
DEPENDS+=	${PYPKGPREFIX}-prettytable>=0.7.2:../../textproc/py-prettytable
.include "../../mk/bsd.pkg.mk"
