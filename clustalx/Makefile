# $NetBSD$
#

DISTNAME=		clustalx-2.0.12
PKGREVISION=		1
CATEGORIES=		biology
MASTER_SITES=		ftp://ftp.ebi.ac.uk/pub/software/clustalw2/2.0.12/

MAINTAINER=	brook@nmsu.edu
HOMEPAGE=	http://bips.u-strasbg.fr/fr/Documentation/ClustalX/
COMMENT=	General purpose multiple alignment program for DNA or proteins (X11)
LICENSE=	clustal-license

USE_LANGUAGES+=		c++
MESSAGE_SUBST+=		PREFIX=${PREFIX}

SUBST_CLASSES+=		clustalx
SUBST_STAGE.clustalx=	pre-configure
SUBST_MESSAGE.clustalx=	Fixing clustalx shell script
SUBST_FILES.clustalx=	clustalx.sh
SUBST_VARS.clustalx=	LIBEXECDIR

BINDIR=			${PREFIX}/bin
LIBEXECDIR=		${PREFIX}/libexec/clustalx

INSTALLATION_DIRS+=	${BINDIR} ${LIBEXECDIR}

post-extract:
	${CP} ${FILESDIR}/clustalx.sh ${WRKSRC}

do-configure:
	(cd ${WRKSRC} && ${QTDIR}/bin/qmake)

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/clustalx.sh ${DESTDIR}${BINDIR}/clustalx
	${INSTALL_PROGRAM} ${WRKSRC}/clustalx ${DESTDIR}${LIBEXECDIR}
.for f in colprot.xml coldna.xml colprint.xml clustalx.hlp
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${LIBEXECDIR}
.endfor

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
