.class public final Lleadcore/provider/Telephony$Messaging;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lleadcore/provider/Telephony$BaseMessagingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messaging"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleadcore/provider/Telephony$Messaging$Simcard;,
        Lleadcore/provider/Telephony$Messaging$Outbox;,
        Lleadcore/provider/Telephony$Messaging$Drafts;,
        Lleadcore/provider/Telephony$Messaging$Sent;,
        Lleadcore/provider/Telephony$Messaging$BlackList;,
        Lleadcore/provider/Telephony$Messaging$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final KEY_ACTION_SENDTO_COMPOSE_MODE:Ljava/lang/String; = "key_compose_mode"

.field public static final KEY_ACTION_SENDTO_CONTACT_GROUP:Ljava/lang/String; = "key_contact_group"

.field public static final KEY_ACTION_SENDTO_CONTENT_URI:Ljava/lang/String; = "key_content_uri"

.field public static final KEY_ACTION_SENDTO_EXIT_ON_SENT:Ljava/lang/String; = "key_exit_on_sent"

.field public static final KEY_ACTION_SENDTO_MESSAGE_BODY:Ljava/lang/String; = "key_message_body"

.field public static final KEY_ACTION_SENDTO_MESSAGE_SUBJECT:Ljava/lang/String; = "key_message_subject"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2215
    const-string v0, "content://messaging"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$Messaging;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    return-void
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "address"

    .prologue
    .line 2299
    if-nez p1, :cond_1

    .line 2300
    const-string v2, ""

    .line 2324
    :cond_0
    :goto_0
    return-object v2

    .line 2302
    :cond_1
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2303
    .local v4, values:[Ljava/lang/String;
    const-string v2, ""

    .line 2304
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 2305
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2308
    invoke-static {p1}, Lleadcore/provider/Telephony$Messaging;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2309
    aget-object v5, v4, v0

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2310
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 2311
    aget-object v5, v4, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2318
    .end local v1           #index:I
    .local v3, temp:Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2304
    .end local v3           #temp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2313
    .restart local v1       #index:I
    :cond_3
    aget-object v3, v4, v0

    .restart local v3       #temp:Ljava/lang/String;
    goto :goto_2

    .line 2316
    .end local v1           #index:I
    .end local v3           #temp:Ljava/lang/String;
    :cond_4
    aget-object v5, v4, v0

    invoke-static {p0, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #temp:Ljava/lang/String;
    goto :goto_2

    .line 2321
    .end local v3           #temp:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2322
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getMessageBoxName(I)Ljava/lang/String;
    .locals 3
    .parameter "msgBox"

    .prologue
    .line 2272
    packed-switch p0, :pswitch_data_0

    .line 2289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message box: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2274
    :pswitch_0
    const-string v0, "all"

    .line 2287
    :goto_0
    return-object v0

    .line 2276
    :pswitch_1
    const-string v0, "inbox"

    goto :goto_0

    .line 2278
    :pswitch_2
    const-string/jumbo v0, "sent"

    goto :goto_0

    .line 2280
    :pswitch_3
    const-string v0, "drafts"

    goto :goto_0

    .line 2282
    :pswitch_4
    const-string/jumbo v0, "outbox"

    goto :goto_0

    .line 2284
    :pswitch_5
    const-string/jumbo v0, "simcard"

    goto :goto_0

    .line 2287
    :pswitch_6
    const-string v0, "blacklist"

    goto :goto_0

    .line 2272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final getMessageUri(IJ)Landroid/net/Uri;
    .locals 2
    .parameter "msg_t"
    .parameter "msg_id"

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 2259
    sget-object v1, Lleadcore/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2268
    :cond_0
    :goto_0
    return-object v0

    .line 2261
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 2262
    sget-object v1, Lleadcore/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2264
    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 2265
    sget-object v1, Lleadcore/provider/Telephony$SimSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 2294
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
