# $NetBSD$

BUILDLINK_TREE+=	bowtie

.if !defined(BOWTIE_BUILDLINK3_MK)
BOWTIE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bowtie+=	bowtie>=1.0.1
BUILDLINK_PKGSRCDIR.bowtie?=	../../wip/bowtie
.endif	# BOWTIE_BUILDLINK3_MK

BUILDLINK_TREE+=	-bowtie
