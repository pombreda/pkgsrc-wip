$NetBSD$

--- unwind.h.orig	2014-09-28 09:05:44.000000000 +0000
+++ unwind.h
@@ -0,0 +1,4 @@
+#pragma GCC system_header
+#pragma GCC visibility push(default)
+#include_next <unwind.h>
+#pragma GCC visibility pop
