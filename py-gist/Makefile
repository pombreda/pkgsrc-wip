# $NetBSD$

DISTNAME=	pygist-1.5.28
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/^py//}
CATEGORIES=	graphics python
MASTER_SITES=	http://hifweb.lbl.gov/public/software/gist/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://hifweb.lbl.gov/public/software/gist/
COMMENT=	Gist is a scientific graphics library
#please see: http://hifweb.lbl.gov/public/software/gist/RELEASE
#LICENSE=	# TODO: (see mk/license.mk)

PYDISTUTILSPKG=	yes
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-Numeric

.include "../../devel/readline/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
