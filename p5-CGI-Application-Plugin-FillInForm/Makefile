# $NetBSD$
#

DISTNAME=	CGI-Application-Plugin-FillInForm-1.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/M/MG/MGRAHAM/

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	${MASTER_SITE_PERL_CPAN:=CGI/}
COMMENT=	Integrate with HTML::FillInForm

# TODO: Look for the dependencies in Build.PL.
DEPENDS+=	p5-CGI-Application>=4.11:../../www/p5-CGI-Application
DEPENDS+=	p5-HTML-FillInForm>=2.0:../../www/p5-HTML-FillInForm

PKG_DESTDIR_SUPPORT=    none

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/CGI/Application/Plugin/FillInForm/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
