.class public final Lleadcore/provider/Telephony$Messaging$Simcard;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lleadcore/provider/Telephony$BaseMessagingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony$Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Simcard"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2252
    const-string v0, "content://simsms/messaging"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/provider/Telephony$Messaging$Simcard;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method