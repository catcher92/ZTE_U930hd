.class Landroid/net/wifi/TwStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "TwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/TwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/TwStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/TwStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 32
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #getter for: Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$000(Landroid/net/wifi/TwStateTracker;)Landroid/net/wifi/TwManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 36
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #calls: Landroid/net/wifi/TwStateTracker;->init()V
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$100(Landroid/net/wifi/TwStateTracker;)V

    .line 38
    :cond_2
    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, wifiState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 40
    const-string v1, "TwStateTracker"

    const-string v2, " BroadcastReceiver  WIFI_STATE_CHANGED_ACTION WIFI_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #getter for: Landroid/net/wifi/TwStateTracker;->isWpaInit:Z
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$200(Landroid/net/wifi/TwStateTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #setter for: Landroid/net/wifi/TwStateTracker;->isWpaInit:Z
    invoke-static {v1, v3}, Landroid/net/wifi/TwStateTracker;->access$202(Landroid/net/wifi/TwStateTracker;Z)Z

    .line 43
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #getter for: Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$000(Landroid/net/wifi/TwStateTracker;)Landroid/net/wifi/TwManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/TwManager;->twWpaInit()I

    goto :goto_0

    .line 47
    :cond_3
    if-ne v0, v3, :cond_0

    .line 48
    const-string v1, "TwStateTracker"

    const-string v2, " BroadcastReceiver  WIFI_STATE_CHANGED_ACTION WIFI_STATE_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #getter for: Landroid/net/wifi/TwStateTracker;->isWpaInit:Z
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$200(Landroid/net/wifi/TwStateTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    #getter for: Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;
    invoke-static {v1}, Landroid/net/wifi/TwStateTracker;->access$000(Landroid/net/wifi/TwStateTracker;)Landroid/net/wifi/TwManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/TwManager;->twWpaUnInit()I

    .line 51
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker$1;->this$0:Landroid/net/wifi/TwStateTracker;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/TwStateTracker;->isWpaInit:Z
    invoke-static {v1, v2}, Landroid/net/wifi/TwStateTracker;->access$202(Landroid/net/wifi/TwStateTracker;Z)Z

    goto :goto_0
.end method
