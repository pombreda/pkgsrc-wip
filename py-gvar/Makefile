# $NetBSD$

DISTNAME=	gvar-4.6.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/g/gvar/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/gplepage/lsqfit.git
COMMENT=	Utilities for manipulating Gaussian random variables
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=	c

PYDISTUTILSPKG= yes


.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
