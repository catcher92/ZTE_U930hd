.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
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
    .line 1087
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1251
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v1, 0x1

    .line 1218
    iget-object v2, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1223
    .local v0, wifiSleepPolicy:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v1

    .line 1226
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1232
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_idle_ms"

    const-wide/32 v14, 0xdbba0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1096
    .local v3, idleMillis:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_monitor_ms"

    const-wide/32 v14, 0xea60

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1101
    .local v5, monitorMillis:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stay_on_while_plugged_in"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1104
    .local v9, stayAwakeConditions:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_auto_connection"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v2, 0x1

    .line 1107
    .local v2, autoConnect:Z
    :goto_0
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1109
    const-string v12, "WifiService"

    const-string v13, "ACTION_SCREEN_ON"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;Z)Z

    .line 1114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/server/WifiService;->wifiHaveData:J
    invoke-static {v12, v13, v14}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;J)J

    .line 1116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/WifiService;->isturnoffwifi:Z
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1123
    :cond_0
    if-eqz v2, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1126
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    .line 1206
    :cond_2
    :goto_1
    return-void

    .line 1104
    .end local v2           #autoConnect:Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1127
    .restart local v2       #autoConnect:Z
    :cond_4
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1129
    const-string v12, "WifiService"

    const-string v13, "ACTION_SCREEN_OFF"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;Z)Z

    .line 1133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1144
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v12, v12, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_6

    .line 1147
    const-string v12, "WifiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1151
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_1

    .line 1154
    :cond_7
    const-string v12, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1155
    const-string v12, "WifiService"

    const-string v13, "ACTION_DEVICE_IDLE"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v12, v12, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_8

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getWifiData()J
    invoke-static {v13}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)J

    move-result-wide v13

    #setter for: Lcom/android/server/WifiService;->wifiHaveData:J
    invoke-static {v12, v13, v14}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;J)J

    .line 1159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1162
    :cond_8
    const-string v12, "WifiService"

    const-string v13, "wifi disCONNECTED"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_1

    .line 1166
    :cond_9
    const-string v12, "com.android.server.WifiManager.action.ACTION_SMART_MONITOR"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1167
    const-string v12, "WifiService"

    const-string v13, "ACTION_SMART_MONITOR"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->wifiHaveData:J
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)J

    move-result-wide v13

    #calls: Lcom/android/server/WifiService;->isWifiChangeData(J)Z
    invoke-static {v12, v13, v14}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;J)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getWifiData()J
    invoke-static {v13}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)J

    move-result-wide v13

    #setter for: Lcom/android/server/WifiService;->wifiHaveData:J
    invoke-static {v12, v13, v14}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;J)J

    .line 1170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1173
    :cond_a
    const-string v12, "WifiService"

    const-string v13, "ACTION_SMART_MONITOR,set wifi sleep"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_1

    .line 1177
    :cond_b
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1185
    const-string v12, "plugged"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1187
    .local v7, pluggedType:I
    const-string v12, "WifiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v10, v12, v3

    .line 1193
    .local v10, triggerTime:J
    const-string v12, "WifiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1197
    .end local v10           #triggerTime:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v12, v7}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_1

    .line 1198
    .end local v7           #pluggedType:I
    :cond_d
    const-string v12, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1199
    const-string v12, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1201
    .local v8, state:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_1

    .line 1202
    .end local v8           #state:I
    :cond_e
    const-string v12, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-string v13, "phoneinECMState"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v12, v13}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;Z)Z

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    goto/16 :goto_1
.end method
