$NetBSD$

Only <glib.h> can be included directly.

--- src/jni/jg_jnu.c.orig	2007-01-05 11:49:15.000000000 +0000
+++ src/jni/jg_jnu.c
@@ -5,7 +5,6 @@
 
 #include "jg_jnu.h"
 #include <stddef.h>
-#include <glib/gmem.h>
 #include <glib.h>
 #include <string.h>
 
