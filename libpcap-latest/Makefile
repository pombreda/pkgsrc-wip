# $NetBSD$

DISTNAME=		libpcap-0.8.3
CATEGORIES=		net
MASTER_SITES=	http://www.tcpdump.org/release/

MAINTAINER=		imil@gcu.info
HOMEPAGE=		http://www.tcpdump.org/
COMMENT=		System-independent interface for user-level packet capture

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=		yes
USE_TOOLS+=		flex bison gm4
USE_LIBTOOL=		yes

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS" || ${OPSYS} == "Linux"
.  if exists(/usr/include/netinet/ip6.h)
CONFIGURE_ARGS+=	--enable-ipv6
.  endif
.endif

.include "../../mk/bsd.pkg.mk"
