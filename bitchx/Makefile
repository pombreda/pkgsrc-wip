# $NetBSD: Makefile,v 1.54 2014/02/12 23:17:35 tron Exp $

DISTNAME=	bitchx-1.2.1
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bitchx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.bitchx.org/
COMMENT=	IRC client based on ircII
LICENSE=	modified-bsd

USE_TOOLS+=	bash

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--with-ssl
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share
CONFIG_SHELL=		${TOOLS_PATH.bash}

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CFLAGS+=	-DBIND_8_COMPAT
.endif

SUBST_CLASSES+=		manpage
SUBST_STAGE.manpage=	post-patch
SUBST_FILES.manpage+=	doc/BitchX.1
SUBST_SED.manpage+=	-e 's,@PREFIX@,${PREFIX},g'

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../mk/terminfo.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
