.class public final Landroid/provider/Settings$ApProxySettings;
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
    name = "ApProxySettings"
.end annotation


# static fields
.field public static final AP_NAME_COLUMN:I = 0x1

.field public static final AP_PROXY_ADDRESS_COLUMN:I = 0x3

.field public static final AP_PROXY_FILTER_COLUMN:I = 0x5

.field public static final AP_PROXY_ISCLICK_COLUMN:I = 0x6

.field public static final AP_PROXY_PORT_COLUMN:I = 0x4

.field public static final AP_SECURITY_COLUMN:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_AP_NAME:Ljava/lang/String; = "ap_name"

.field public static final KEY_AP_PROXY_ADDRESS:Ljava/lang/String; = "ap_proxy_address"

.field public static final KEY_AP_PROXY_FILTER:Ljava/lang/String; = "ap_proxy_filter"

.field public static final KEY_AP_PROXY_ISCLICK:Ljava/lang/String; = "ap_proxy_isclick"

.field public static final KEY_AP_PROXY_PORT:Ljava/lang/String; = "ap_proxy_port"

.field public static final KEY_AP_SECURITY:Ljava/lang/String; = "ap_security"

.field public static final KEY_PROXY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_USE_AP_PROXY_ENABLE:Ljava/lang/String; = "use_ap_proxy_enable"

.field public static final USE_AP_PROXY_ENABLE_COLUMN:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4615
    const-string v0, "content://settings/proxysettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$ApProxySettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4611
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
