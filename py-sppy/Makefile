# $NetBSD$

DISTNAME=	sppy-0.6.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/s/sppy/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://packages.python.org/sppy/
COMMENT=	Sparse matrix package based on Eigen
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/sppy-0.6.3
USE_LANGUAGES=	c c++

.include "../../devel/py-cython/buildlink3.mk"
.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../math/eigen3/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
DEPENDS+=	${PYPKGPREFIX}-scipy>=0.7.2:../../math/py-scipy
.include "../../mk/bsd.pkg.mk"
