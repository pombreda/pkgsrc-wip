# $NetBSD$

DISTNAME=	pypet-0.1b.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/p/pypet/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/SmokinCaterpillar/pypet
COMMENT=	Toolkit for numerical simulations to allow easy parameter
LICENSE=	2-clause-bsd


DEPENDS+=	${PYPKGPREFIX}-pandas>=0.12.0:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy
DEPENDS+=	${PYPKGPREFIX}-pytables>=2.2:../../math/py-pytables

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
