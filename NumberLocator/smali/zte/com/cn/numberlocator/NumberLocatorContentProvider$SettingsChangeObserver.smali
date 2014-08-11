.class Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "NumberLocatorContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/NumberLocatorContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorContentProvider;


# direct methods
.method public constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;->this$0:Lzte/com/cn/numberlocator/NumberLocatorContentProvider;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 53
    const-string v0, "NumberLocatorContentProvider"

    const-string v1, "onChange ->getIpSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;->this$0:Lzte/com/cn/numberlocator/NumberLocatorContentProvider;

    #calls: Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V
    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->access$100(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V

    .line 55
    return-void
.end method
