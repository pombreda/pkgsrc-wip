# $NetBSD$

BUILDLINK_TREE+=	hs-explicit-iomodes

.if !defined(HS_EXPLICIT_IOMODES_BUILDLINK3_MK)
HS_EXPLICIT_IOMODES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-explicit-iomodes+=	hs-explicit-iomodes>=0.6.0
BUILDLINK_ABI_DEPENDS.hs-explicit-iomodes+=	hs-explicit-iomodes>=0.6.0.5
BUILDLINK_PKGSRCDIR.hs-explicit-iomodes?=	../../wip/hs-explicit-iomodes

.include "../../wip/hs-base-unicode-symbols/buildlink3.mk"
.include "../../devel/hs-tagged/buildlink3.mk"
.endif	# HS_EXPLICIT_IOMODES_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-explicit-iomodes
