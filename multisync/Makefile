# $NetBSD$
#

PKGNAME=		multisync-0.82
PKGREVISION=		4
COMMENT=		Modular program to synchronize PIM data

WRKSRC=			${WRKDIR}/multisync-0.82
USE_TOOLS+=		aclocal autoconf autoheader automake

pre-configure:
	cd ${WRKSRC} && \
		aclocal && \
		autoheader && \
		autoconf && \
		automake -acf


.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../wip/multisync/Makefile.common"
