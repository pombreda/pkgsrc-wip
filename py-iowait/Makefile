# $NetBSD$

DISTNAME=	iowait-0.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	https://launchpad.net/python-iowait/0.x/0.2/+download/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	https://launchpadlibrarian.net/65588193/
COMMENT=	Platform-independent module for I/O completion events
LICENSE=	gnu-lgpl-v3

PYDISTUTILSPKG=	yes

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
