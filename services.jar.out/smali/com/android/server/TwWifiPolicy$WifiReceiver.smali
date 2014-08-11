.class public Lcom/android/server/TwWifiPolicy$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TwWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/TwWifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/server/TwWifiPolicy;->handleWifiStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/server/TwWifiPolicy;->access$100(Lcom/android/server/TwWifiPolicy;I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string v4, "bssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/TwWifiPolicy;->handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/TwWifiPolicy;->access$200(Lcom/android/server/TwWifiPolicy;Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v2, "android.net.wifi.TW_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "tw_state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/TwState;

    .line 158
    .local v1, mTwState:Landroid/net/wifi/TwState;
    if-eqz v1, :cond_0

    sget-object v2, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/TwWifiPolicy;->access$300(Lcom/android/server/TwWifiPolicy;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 163
    .end local v1           #mTwState:Landroid/net/wifi/TwState;
    :cond_3
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "TwWifiPolicy"

    const-string v3, "SCAN_RESULTS_AVAILABLE_ACTION received!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z
    invoke-static {v2}, Lcom/android/server/TwWifiPolicy;->access$400(Lcom/android/server/TwWifiPolicy;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/TwWifiPolicy;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z
    invoke-static {v2, v3}, Lcom/android/server/TwWifiPolicy;->access$402(Lcom/android/server/TwWifiPolicy;Z)Z

    goto :goto_0
.end method
