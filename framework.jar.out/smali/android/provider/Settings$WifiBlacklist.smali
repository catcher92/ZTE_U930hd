.class public final Landroid/provider/Settings$WifiBlacklist;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiBlacklist"
.end annotation


# static fields
.field public static final AP_NAME_COLUMN:I = 0x1

.field public static final AP_SECURITY_COLUMN:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_AP_NAME:Ljava/lang/String; = "ap_name"

.field public static final KEY_AP_SECURITY:Ljava/lang/String; = "ap_security"

.field public static final KEY_PROXY_ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4637
    const-string v0, "content://settings/wifiblacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$WifiBlacklist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4633
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
