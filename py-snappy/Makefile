# $NetBSD$

DISTNAME=	python-snappy-0.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/python-//}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/p/python-snappy/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://github.com/andrix/python-snappy
COMMENT=	Python library for the snappy compression library from Google
LICENSE=	2-clause-bsd

USE_LANGUAGES=	c c++

PYDISTUTILSPKG=	yes


.include "../../devel/snappy/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
