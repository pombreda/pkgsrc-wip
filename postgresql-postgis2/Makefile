# $NetBSD: Makefile,v 1.19 2014/05/29 23:35:32 wiz Exp $

DISTNAME=	postgis-2.1.3
PKGNAME=	postgresql${PGSQL_VERSION}-${DISTNAME}
CATEGORIES=	databases geography
MASTER_SITES=	http://download.osgeo.org/postgis/source/

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://postgis.net/
COMMENT=	Spatial database capabilities for PostgreSQL

LICENSE=	gnu-gpl-v2

DEPENDS+=		postgresql${PGSQL_VERSION}-server>=0:../../databases/postgresql${PGSQL_VERSION}-server

CONFLICTS=		postgis-[0-9]*

# TODO section
# 1. File ticket upstream about make->$(MAKE) in doc/html/image_src/Makefile.
# 2. Update to upstream with fixes for:
@      http://trac.osgeo.org/postgis/ticket/2872
#      http://trac.osgeo.org/postgis/ticket/2909

# gmake complains about adding + to parent rule
MAKE_JOBS_SAFE=		no

PGSQL_VERSIONS_ACCEPTED=	90 91 92 93

USE_GCC_RUNTIME=	yes
USE_LANGUAGES=		c c++ c99
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake lex pax perl
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-rpath
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/postgresql/contrib

BUILD_TARGET=		all docs
INSTALL_TARGET=		install docs-install

DOCDIR=			${PREFIX}/share/doc/postgis

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	extras/template_gis/profile \
			extras/template_gis/createdb.postgis.1 \
			extras/template_gis/mktemplate_gis.1 \
			extras/template_gis/postgis_env.sh.in
SUBST_VARS.paths+=	PKG_SYSCONFDIR
SUBST_STAGE.paths=	pre-configure

INSTALLATION_DIRS=	${DOCDIR} ${DOCDIR}/images ${PKGMANDIR}/man1

REPLACE_PERL+=		utils/postgis_restore.pl.in
#MAKE_ENV+=		PERL5=${PERL5:Q}

INSTALL_ENV+=		mkinstalldirs=${INSTALL_DATA_DIR:Q}

TEST_TARGET=		check

# TEST_DEPENDS
.include "../../devel/cunit/buildlink3.mk"

# DOC DEPENDS
CONFIGURE_ARGS+=	-with-xsldir=${PREFIX}/share/xsl/docbook
# By default xsltproc downloads DTDs.  postgis tells it not to, but
# the dependencies are not packaged.  The timing option, not needed,
# is to make the variable non-empty, to work around a
# defined/non-empty incorrect test in postgis.
MAKE_ENV+=		"XSLTPROCFLAGS=--timing"

# These are really all BUILD_DEPENDS.
.include "../../graphics/ImageMagick/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../textproc/docbook-xsl/buildlink3.mk"

# NORMAL DEPENDS
.include "../../geography/gdal-lib/buildlink3.mk"
.include "../../geography/geos/buildlink3.mk"
.include "../../geography/proj/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
