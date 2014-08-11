.class public final Lleadcore/provider/Telephony$MessageSummary;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleadcore/provider/Telephony$MessageSummary$ReadReportStatus;,
        Lleadcore/provider/Telephony$MessageSummary$DeliveryReportStatus;,
        Lleadcore/provider/Telephony$MessageSummary$SendRecvStatus;,
        Lleadcore/provider/Telephony$MessageSummary$MsgType;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPLEX:Ljava/lang/String; = "complex"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DR_STAT:Ljava/lang/String; = "dr_stat"

.field public static final FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final GROUP_DATE:Ljava/lang/String; = "grp_date"

.field public static final GROUP_QUERY_URI:Landroid/net/Uri; = null

.field public static final HAS_ATT:Ljava/lang/String; = "has_att"

.field public static final IMG_ID:Ljava/lang/String; = "img_id"

.field public static final KNOWN:Ljava/lang/String; = "known"

.field public static final LOCAL_DATE:Ljava/lang/String; = "local_date"

.field public static final MID:Ljava/lang/String; = "mid"

.field public static final MMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RR_STAT:Ljava/lang/String; = "rr_stat"

.field public static final SIMSMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SR_STAT:Ljava/lang/String; = "sr_stat"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TEXT_BODY:Ljava/lang/String; = "text_body"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2384
    const-string v0, "content://message_summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$MessageSummary;->CONTENT_URI:Landroid/net/Uri;

    .line 2385
    const-string v0, "content://message_summary/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$MessageSummary;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 2386
    const-string v0, "content://message_summary/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$MessageSummary;->MMS_CONTENT_URI:Landroid/net/Uri;

    .line 2387
    const-string v0, "content://message_summary/simsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$MessageSummary;->SIMSMS_CONTENT_URI:Landroid/net/Uri;

    .line 2388
    const-string v0, "content://message_summary/group"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$MessageSummary;->GROUP_QUERY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2383
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2436
    return-void
.end method

.method public static final getGroupDate(J)I
    .locals 7
    .parameter "timeInMillis"

    .prologue
    .line 2463
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 2466
    .local v3, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 2468
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 2469
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 2470
    .local v4, year:I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 2471
    .local v2, month:I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2473
    .local v1, day:I
    shl-int/lit8 v5, v4, 0xf

    shl-int/lit8 v6, v2, 0xa

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x5

    or-int/2addr v5, v6

    return v5
.end method

.method public static final getMessageUri(IJ)Landroid/net/Uri;
    .locals 2
    .parameter "msg_type"
    .parameter "msg_id"

    .prologue
    .line 2445
    const/4 v0, 0x0

    .line 2447
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 2459
    :goto_0
    return-object v0

    .line 2449
    :pswitch_0
    sget-object v1, Lleadcore/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2450
    goto :goto_0

    .line 2452
    :pswitch_1
    sget-object v1, Lleadcore/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2453
    goto :goto_0

    .line 2455
    :pswitch_2
    sget-object v1, Lleadcore/provider/Telephony$SimSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
