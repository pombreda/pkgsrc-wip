# $NetBSD$

DISTNAME=	pyfanova-0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S//py/}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/p/pyfanova/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/automl/fanova
COMMENT=	Functional ANOVA
#LICENSE=	# TODO: (see mk/license.mk)

DEPENDS+=	${PYPKGPREFIX}-docutils>=0.11:../../textproc/py-docutils

PKG_JVMS_ACCEPTED= sun-jdk7 sun-jdk6 sun-jdk15 sun-jdk14

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
