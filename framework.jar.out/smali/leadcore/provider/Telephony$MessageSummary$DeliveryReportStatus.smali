.class public final Lleadcore/provider/Telephony$MessageSummary$DeliveryReportStatus;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony$MessageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeliveryReportStatus"
.end annotation


# static fields
.field public static final FAILED:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PENDING:I = 0x1

.field public static final REJECTED:I = 0x3

.field public static final RETRIEVED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2428
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
