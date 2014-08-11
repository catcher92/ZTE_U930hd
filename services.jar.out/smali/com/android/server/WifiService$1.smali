.class Lcom/android/server/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SOFTAP_START_POWERMODE_ALARM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    const-string v6, "WifiService"

    const-string v7, "WifiStateMachine.ACTION_WIFI_AP_START_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v6, v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SOFTAP_STOP_POWERMODE_ALARM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 463
    const-string v5, "WifiService"

    const-string v6, "WifiStateMachine.ACTION_WIFI_AP_STOP_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v5, v1}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SOFTAP_SLEEPPOLICY_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 469
    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_sleep_policy"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 471
    .local v4, value:I
    const/4 v2, 0x1

    .line 472
    .local v2, shouldStartApSleepPolicyAlarm:Z
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 473
    const/4 v2, 0x0

    .line 474
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldStartApSleepPolicyAlarm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v6

    if-eq v6, v10, :cond_4

    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v6

    if-ne v6, v9, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    move v1, v5

    .line 482
    .local v1, shouldStartAlarm:Z
    :cond_5
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v5, v1}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 483
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldAlarm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 485
    .end local v1           #shouldStartAlarm:Z
    .end local v2           #shouldStartApSleepPolicyAlarm:Z
    .end local v4           #value:I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.server.WifiManager.action.WIFI_AP_SLEEP_POLICY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, isSTAConnected:Z
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->getStationNum()I

    move-result v3

    .line 489
    .local v3, staionNum:I
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "staionNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    if-nez v3, :cond_7

    .line 491
    const/4 v0, 0x0

    .line 497
    .end local v3           #staionNum:I
    :goto_1
    if-eqz v0, :cond_a

    .line 498
    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_sleep_policy"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 500
    .restart local v4       #value:I
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez v4, :cond_8

    .line 503
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    const/4 v6, 0x5

    #setter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 493
    .end local v4           #value:I
    .restart local v3       #staionNum:I
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 504
    .end local v3           #staionNum:I
    .restart local v4       #value:I
    :cond_8
    if-ne v4, v5, :cond_9

    .line 505
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    const/16 v6, 0xf

    #setter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 507
    :cond_9
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v5, v1}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 510
    .end local v4           #value:I
    :cond_a
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-static {v5}, Lcom/android/server/WifiService;->access$910(Lcom/android/server/WifiService;)I

    .line 511
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSleepPolicyTickCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v7}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)I

    move-result v5

    if-nez v5, :cond_0

    .line 514
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    if-eq v5, v10, :cond_b

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 516
    :cond_b
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 495
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method
