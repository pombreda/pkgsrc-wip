$NetBSD$

--- src/digitemp.c.orig	2008-08-28 04:42:48.000000000 +0000
+++ src/digitemp.c
@@ -79,10 +79,10 @@
 #if DARWIN
 #include <machine/endian.h>
 #endif
-#if FREEBSD
+#if FREEBSD  || NETBSD
 #include <sys/endian.h>
 #endif
-#if !defined(DARWIN) && !defined(FREEBSD)
+#if !defined(DARWIN) && !defined(FREEBSD) && !defined(NETBSD)
 #include <endian.h>
 #endif
 
