# $NetBSD: options.mk,v 1.7 2014/09/17 17:35:23 macallan Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.webkit-gtk
PKG_SUPPORTED_OPTIONS=	enchant opengl webkit-jit
PKG_SUGGESTED_OPTIONS=	enchant opengl

.include "../../mk/bsd.prefs.mk"

# XXX JIT produces invalid code
# it's also entirely unsupported on powerpc and sparc
.if empty(MACHINE_PLATFORM:MNetBSD-*-i386) \
 && empty(MACHINE_PLATFORM:MNetBSD-*-x86_64) \
 && empty(MACHINE_PLATFORM:MNetBSD-*-powerpc) \
 && empty(MACHINE_PLATFORM:MNetBSD-*-sparc64) \
 && empty(MACHINE_PLATFORM:MNetBSD-*-sparc) \
 && empty(MACHINE_PLATFORM:MSunOS-*)
PKG_SUGGESTED_OPTIONS+= webkit-jit
.endif

.include "../../mk/bsd.options.mk"

#
# JIT support
#
.if !empty(PKG_OPTIONS:Mwebkit-jit)
CMAKE_ARGS+=	-DENABLE_JIT=1
.else
CMAKE_ARGS+=	-DENABLE_JIT=0
.endif

#
# OpenGL support: enable support for GLX, WebGL and accelerated compositing
#
# TODO: should we split them in multiple options?
#
.if !empty(PKG_OPTIONS:Mopengl)
CMAKE_ARGS+=	-DENABLE_3D_RENDERING=1
CMAKE_ARGS+=	-DENABLE_WEBGL=1
.else
CMAKE_ARGS+=	-DENABLE_3D_RENDERING=0
CMAKE_ARGS+=	-DENABLE_WEBGL=0
.endif

#
# Spellcheck support using enchant
#
.if !empty(PKG_OPTIONS:Menchant)
CMAKE_ARGS+=	-DENABLE_SPELLCHECK=1
.include "../../textproc/enchant/buildlink3.mk"
.else
CMAKE_ARGS+=	-DENABLE_SPELLCHECK=0
.endif