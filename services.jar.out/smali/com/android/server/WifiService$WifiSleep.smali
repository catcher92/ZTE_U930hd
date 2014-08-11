.class Lcom/android/server/WifiService$WifiSleep;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSleep"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$WifiSleep;-><init>(Lcom/android/server/WifiService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 1834
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1836
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_sleep_policy"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1839
    .local v2, value:I
    if-nez v2, :cond_2

    .line 1840
    const/16 v0, 0x1e

    .line 1847
    .local v0, closeNum:I
    :goto_1
    const-string v4, "WifiService"

    const-string v5, "[MESSAGE_OPEN_WIFI_AP] begin to get station num = "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {}, Landroid/net/wifi/WifiNative;->getStationNum()I

    move-result v1

    .line 1849
    .local v1, staNum:I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MESSAGE_OPEN_WIFI_AP] staNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   getStaNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->getStaNum:I
    invoke-static {v6}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    if-nez v1, :cond_3

    .line 1851
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$4808(Lcom/android/server/WifiService;)I

    .line 1855
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->getStaNum:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 1856
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1857
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->getStaNum:I
    invoke-static {v4, v7}, Lcom/android/server/WifiService;->access$4802(Lcom/android/server/WifiService;I)I

    goto :goto_0

    .line 1841
    .end local v0           #closeNum:I
    .end local v1           #staNum:I
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1842
    const/16 v0, 0x5a

    .restart local v0       #closeNum:I
    goto :goto_1

    .line 1852
    .restart local v1       #staNum:I
    :cond_3
    if-lez v1, :cond_1

    .line 1853
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->getStaNum:I
    invoke-static {v4, v7}, Lcom/android/server/WifiService;->access$4802(Lcom/android/server/WifiService;I)I

    goto :goto_2

    .line 1859
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/server/WifiService$WifiSleep;->removeMessages(I)V

    .line 1860
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/server/WifiService$WifiSleep;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1864
    .end local v0           #closeNum:I
    .end local v1           #staNum:I
    .end local v2           #value:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1866
    .local v3, wifiSleepPolicy:I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MESSAGE_WIFI_SLEEP] isturnoffwifi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->isturnoffwifi:Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->isturnoffwifi:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1868
    iget-object v4, p0, Lcom/android/server/WifiService$WifiSleep;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->turnoffWifi()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)V

    .line 1873
    invoke-virtual {p0, v8}, Lcom/android/server/WifiService$WifiSleep;->removeMessages(I)V

    .line 1874
    const-wide/32 v4, 0xea60

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/WifiService$WifiSleep;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1870
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/server/WifiService$WifiSleep;->removeMessages(I)V

    goto/16 :goto_0

    .line 1834
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
