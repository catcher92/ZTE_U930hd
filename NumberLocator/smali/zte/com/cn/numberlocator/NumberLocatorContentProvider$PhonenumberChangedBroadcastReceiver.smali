.class Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NumberLocatorContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/NumberLocatorContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonenumberChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorContentProvider;


# direct methods
.method private constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/NumberLocatorContentProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;Lzte/com/cn/numberlocator/NumberLocatorContentProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;-><init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    const-string v1, "NumberLocatorContentProvider"

    const-string v2, "PhonenumberChangedBroadcastReceiver.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    return-void
.end method
