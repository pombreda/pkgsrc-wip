# $NetBSD$
#

DISTNAME=	pymvpa_0.4.5
PKGNAME=	${PYPKGPREFIX}-mvpa-0.4.5
CATEGORIES=	biology
MASTER_SITES=	https://alioth.debian.org/frs/download.php/3358/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.pymvpa.org/
COMMENT=	Multivariate pattern analysis
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-rpy>=2.1.3:../../math/py-rpy
#DEPENDS+=	${PYPKGPREFIX}-scipy>=0.7.0:../../math/py-scipy

WRKSRC=		${WRKDIR}/pymvpa-0.4.5

USE_LANGUAGES=	c c++
PYDISTUTILSPKG=	yes

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
