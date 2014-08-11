.class public final Lleadcore/provider/Telephony$MessageSummary$SendRecvStatus;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony$MessageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendRecvStatus"
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x84

.field public static final DOWNLOAD_FAIL:I = 0x85

.field public static final DOWNLOAD_SUCCESS:I = 0x86

.field public static final NONE:I = 0x80

.field public static final NOT_DOWNLOAD:I = 0x87

.field public static final SENDING:I = 0x81

.field public static final SEND_FAIL:I = 0x82

.field public static final SEND_SUCCESS:I = 0x83


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
