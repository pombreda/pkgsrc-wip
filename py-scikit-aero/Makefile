# $NetBSD$

DISTNAME=	scikit-aero-v0.1.0
PKGNAME=		${PYPKGPREFIX}-${DISTNAME:S/v//}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/s/scikit-aero/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/Pybonacci/scikit-aero
COMMENT=	Aeronautical engineering calculations in Python
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy

WRKSRC=		${WRKDIR}/Pybonacci-scikit-aero-cc233f6
USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
