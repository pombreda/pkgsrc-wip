# $NetBSD$
#

DISTNAME=	Class-DBI-Plugin-Type-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	hiramatu@boreas.dti.ne.jp
HOMEPAGE=	http://search.cpan.org/dist/Class-DBI-Plugin-Type/
COMMENT=	Determine type information for columns

DEPENDS+=	p5-Class-DBI>=0.95:../../databases/p5-Class-DBI
DEPENDS+=	p5-DBIx-ContextualFetch>=1.01:../../databases/p5-DBIx-ContextualFetch

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST=	auto/Class/DBI/Plugin/Type/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
