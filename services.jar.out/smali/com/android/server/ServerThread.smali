.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 778
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 780
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 782
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 83
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return-void
.end method

.method public run()V
    .locals 100

    .prologue
    .line 89
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 97
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 98
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 102
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 104
    .local v81, shutdownAction:Ljava/lang/String;
    if-eqz v81, :cond_0

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_7

    const/16 v78, 0x1

    .line 108
    .local v78, reboot:Z
    :goto_0
    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_8

    .line 109
    const/4 v3, 0x1

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v81

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v77

    .line 114
    .local v77, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v78

    move-object/from16 v1, v77

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 118
    .end local v77           #reason:Ljava/lang/String;
    .end local v78           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 119
    .local v58, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v57, 0x0

    .line 122
    .local v57, factoryTest:I
    :goto_2
    const/16 v62, 0x0

    .line 123
    .local v62, lights:Lcom/android/server/LightsService;
    const/16 v75, 0x0

    .line 124
    .local v75, power:Lcom/android/server/PowerManagerService;
    const/16 v40, 0x0

    .line 125
    .local v40, battery:Lcom/android/server/BatteryService;
    const/16 v37, 0x0

    .line 126
    .local v37, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 127
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 128
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v67, 0x0

    .line 129
    .local v67, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v47, 0x0

    .line 130
    .local v47, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v97, 0x0

    .line 131
    .local v97, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v95, 0x0

    .line 132
    .local v95, wifi:Lcom/android/server/WifiService;
    const/16 v74, 0x0

    .line 133
    .local v74, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 134
    .local v4, context:Landroid/content/Context;
    const/16 v99, 0x0

    .line 135
    .local v99, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 136
    .local v41, bluetooth:Landroid/server/BluetoothService;
    const/16 v43, 0x0

    .line 137
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v54, 0x0

    .line 138
    .local v54, dock:Lcom/android/server/DockObserver;
    const/16 v90, 0x0

    .line 139
    .local v90, usb:Lcom/android/server/usb/UsbService;
    const/16 v88, 0x0

    .line 140
    .local v88, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v79, 0x0

    .line 141
    .local v79, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v84, 0x0

    .line 142
    .local v84, throttle:Lcom/android/server/ThrottleService;
    const/16 v69, 0x0

    .line 146
    .local v69, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3d

    .line 151
    .end local v75           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 153
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static/range {v57 .. v57}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 156
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 161
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 164
    .local v51, cryptState:Ljava/lang/String;
    const/16 v73, 0x0

    .line 165
    .local v73, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 166
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v73, 0x1

    .line 173
    :cond_1
    :goto_3
    if-eqz v57, :cond_b

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v73

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v74

    .line 176
    const/16 v59, 0x0

    .line 178
    .local v59, firstBoot:Z
    :try_start_2
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v59

    .line 182
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 195
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 202
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Privacy Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v76, Lcom/zte/privacy/ZTEPrivacyManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;-><init>(Landroid/content/Context;)V

    .line 204
    .local v76, privacy:Lcom/zte/privacy/ZTEPrivacyManagerService;
    const-string v3, "privacy"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    invoke-virtual/range {v76 .. v76}, Lcom/zte/privacy/ZTEPrivacyManagerService;->init()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 212
    .end local v76           #privacy:Lcom/zte/privacy/ZTEPrivacyManagerService;
    :goto_8
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 215
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v63, Lcom/android/server/LightsService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 218
    .end local v62           #lights:Lcom/android/server/LightsService;
    .local v63, lights:Lcom/android/server/LightsService;
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v63

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3e

    .line 220
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_9
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 229
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3f

    .line 231
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 233
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 237
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v59, :cond_e

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v99

    .line 241
    const-string v3, "window"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 243
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v99

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 248
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 249
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :goto_b
    invoke-static {v4}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V    
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v62, v63

    .line 276
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v63           #lights:Lcom/android/server/LightsService;
    .end local v73           #onlyCore:Z
    .restart local v62       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v52, 0x0

    .line 277
    .local v52, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v82, 0x0

    .line 278
    .local v82, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v60, 0x0

    .line 279
    .local v60, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v38, 0x0

    .line 280
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v71, 0x0

    .line 281
    .local v71, notification:Lcom/android/server/NotificationManagerService;
    const/16 v93, 0x0

    .line 282
    .local v93, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v64, 0x0

    .line 283
    .local v64, location:Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 284
    .local v49, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v86, 0x0

    .line 287
    .local v86, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_2

    .line 289
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v61, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 291
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .local v61, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3c

    move-object/from16 v60, v61

    .line 297
    .end local v61           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 306
    :cond_2
    :goto_e
    :try_start_e
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 312
    :goto_f
    :try_start_f
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 318
    :goto_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403c2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3b

    .line 325
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_13

    .line 327
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v53, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 329
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v53, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_12
    const-string v3, "device_policy"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3a

    move-object/from16 v52, v53

    .line 335
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v83, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v83

    move-object/from16 v1, v99

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 337
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v83, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_14
    const-string v3, "statusbar"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_39

    move-object/from16 v82, v83

    .line 343
    .end local v83           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 351
    :goto_14
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 353
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 359
    :goto_15
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v87, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 361
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v87, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v3, "textservices"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_38

    move-object/from16 v86, v87

    .line 367
    .end local v87           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v68, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 369
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v68, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string v3, "netstats"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_37

    move-object/from16 v12, v68

    .line 375
    .end local v68           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 379
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_36

    .line 385
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v98, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 387
    .end local v97           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v98, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1e
    const-string v3, "wifip2p"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_35

    move-object/from16 v97, v98

    .line 393
    .end local v98           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v97       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_19
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v96, Lcom/android/server/WifiService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 395
    .end local v95           #wifi:Lcom/android/server/WifiService;
    .local v96, wifi:Lcom/android/server/WifiService;
    :try_start_20
    const-string v3, "wifi"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_34

    move-object/from16 v95, v96

    .line 401
    .end local v96           #wifi:Lcom/android/server/WifiService;
    .restart local v95       #wifi:Lcom/android/server/WifiService;
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v48, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 404
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .local v48, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v3, "connectivity"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 405
    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 406
    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 407
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 408
    invoke-virtual/range {v97 .. v97}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_33

    move-object/from16 v47, v48

    .line 414
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v85, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 416
    .end local v84           #throttle:Lcom/android/server/ThrottleService;
    .local v85, throttle:Lcom/android/server/ThrottleService;
    :try_start_24
    const-string v3, "throttle"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_32

    move-object/from16 v84, v85

    .line 427
    .end local v85           #throttle:Lcom/android/server/ThrottleService;
    .restart local v84       #throttle:Lcom/android/server/ThrottleService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 434
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v72, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v82

    move-object/from16 v2, v62

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 436
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .local v72, notification:Lcom/android/server/NotificationManagerService;
    :try_start_27
    const-string v3, "notification"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 437
    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_31

    move-object/from16 v71, v72

    .line 443
    .end local v72           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_15

    .line 451
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v65, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 453
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .local v65, location:Lcom/android/server/LocationManagerService;
    :try_start_2a
    const-string v3, "location"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_30

    move-object/from16 v64, v65

    .line 459
    .end local v65           #location:Lcom/android/server/LocationManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    :goto_20
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .line 461
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v50, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2c
    const-string v3, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2f

    move-object/from16 v49, v50

    .line 467
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_21
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .line 475
    :goto_22
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_19

    .line 483
    :goto_23
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v94, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 485
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v94, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_30
    const-string v3, "wallpaper"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_2e

    move-object/from16 v93, v94

    .line 491
    .end local v94           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_24
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 498
    :goto_25
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v55, Lcom/android/server/DockObserver;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1c

    .end local v54           #dock:Lcom/android/server/DockObserver;
    .local v55, dock:Lcom/android/server/DockObserver;
    move-object/from16 v54, v55

    .line 506
    .end local v55           #dock:Lcom/android/server/DockObserver;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    :goto_26
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 514
    :goto_27
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v91, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 517
    .end local v90           #usb:Lcom/android/server/usb/UsbService;
    .local v91, usb:Lcom/android/server/usb/UsbService;
    :try_start_35
    const-string v3, "usb"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_2d

    move-object/from16 v90, v91

    .line 523
    .end local v91           #usb:Lcom/android/server/usb/UsbService;
    .restart local v90       #usb:Lcom/android/server/usb/UsbService;
    :goto_28
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v89, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .end local v88           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v89, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v88, v89

    .line 531
    .end local v89           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v88       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_29
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .line 539
    :goto_2a
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v39, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 541
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .local v39, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_39
    const-string v3, "appwidget"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_2c

    move-object/from16 v38, v39

    .line 547
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2b
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v80, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    .end local v79           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v80, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v79, v80

    .line 554
    .end local v80           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v79       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2c
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .line 565
    :goto_2d
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 572
    :goto_2e
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v3, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_25

    .line 578
    :goto_2f
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v70, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_26

    .end local v69           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v70, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v69, v70

    .line 587
    .end local v70           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v69       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_30
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 588
    .local v27, safeMode:Z
    if-eqz v27, :cond_12

    .line 589
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 591
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 593
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 601
    :goto_31
    if-eqz v52, :cond_3

    .line 603
    :try_start_3f
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_27

    .line 609
    :cond_3
    :goto_32
    if-eqz v71, :cond_4

    .line 611
    :try_start_40
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_28

    .line 618
    :cond_4
    :goto_33
    :try_start_41
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_29

    .line 623
    :goto_34
    if-eqz v27, :cond_5

    .line 624
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 630
    :cond_5
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    .line 631
    .local v46, config:Landroid/content/res/Configuration;
    new-instance v66, Landroid/util/DisplayMetrics;

    invoke-direct/range {v66 .. v66}, Landroid/util/DisplayMetrics;-><init>()V

    .line 632
    .local v66, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Landroid/view/WindowManager;

    .line 633
    .local v92, w:Landroid/view/WindowManager;
    invoke-interface/range {v92 .. v92}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 634
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 636
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 638
    :try_start_42
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2a

    .line 644
    :goto_35
    move-object/from16 v16, v4

    .line 645
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 646
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 647
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 648
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 649
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v47

    .line 650
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v54

    .line 651
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v90

    .line 652
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v84

    .line 653
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v88

    .line 654
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v38

    .line 655
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v93

    .line 656
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v60

    .line 657
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v79

    .line 658
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v64

    .line 659
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v49

    .line 660
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v69

    .line 661
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v86

    .line 662
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v82

    .line 669
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 768
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 769
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_6
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 773
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 105
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v54           #dock:Lcom/android/server/DockObserver;
    .end local v57           #factoryTest:I
    .end local v58           #factoryTestStr:Ljava/lang/String;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v66           #metrics:Landroid/util/DisplayMetrics;
    .end local v69           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v74           #pm:Landroid/content/pm/IPackageManager;
    .end local v79           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v84           #throttle:Lcom/android/server/ThrottleService;
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v88           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v90           #usb:Lcom/android/server/usb/UsbService;
    .end local v92           #w:Landroid/view/WindowManager;
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v95           #wifi:Lcom/android/server/WifiService;
    .end local v97           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v99           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_7
    const/16 v78, 0x0

    goto/16 :goto_0

    .line 111
    .restart local v78       #reboot:Z
    :cond_8
    const/16 v77, 0x0

    .restart local v77       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 119
    .end local v77           #reason:Ljava/lang/String;
    .end local v78           #reboot:Z
    .restart local v58       #factoryTestStr:Ljava/lang/String;
    :cond_9
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    goto/16 :goto_2

    .line 168
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    .restart local v57       #factoryTest:I
    .restart local v62       #lights:Lcom/android/server/LightsService;
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v73       #onlyCore:Z
    .restart local v74       #pm:Landroid/content/pm/IPackageManager;
    .restart local v79       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v84       #throttle:Lcom/android/server/ThrottleService;
    .restart local v88       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v90       #usb:Lcom/android/server/usb/UsbService;
    .restart local v95       #wifi:Lcom/android/server/WifiService;
    .restart local v97       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v99       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_a
    :try_start_43
    const-string v3, "1"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v73, 0x1

    goto/16 :goto_3

    .line 173
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 191
    .restart local v59       #firstBoot:Z
    :catch_0
    move-exception v56

    .line 192
    .local v56, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_1

    goto/16 :goto_6

    .line 271
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v59           #firstBoot:Z
    .end local v73           #onlyCore:Z
    :catch_1
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .line 272
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v56, e:Ljava/lang/RuntimeException;
    :goto_36
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 196
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v56           #e:Ljava/lang/RuntimeException;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v73       #onlyCore:Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 206
    :catch_2
    move-exception v56

    .line 207
    .local v56, e:Ljava/lang/Throwable;
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Privacy Manager Service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_1

    goto/16 :goto_8

    .line 238
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :cond_d
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 250
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_10

    .line 251
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 271
    :catch_3
    move-exception v56

    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto :goto_36

    .line 253
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v42, Landroid/server/BluetoothService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_3

    .line 255
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .local v42, bluetooth:Landroid/server/BluetoothService;
    :try_start_46
    const-string v3, "bluetooth"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 256
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 257
    new-instance v44, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_40

    .line 258
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v44, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_47
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 260
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 264
    .local v36, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 266
    .local v45, bluetoothOn:I
    if-nez v36, :cond_11

    if-eqz v45, :cond_11

    .line 267
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->enable()Z
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_41

    :cond_11
    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 292
    .end local v36           #airplaneModeOn:I
    .end local v45           #bluetoothOn:I
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v63           #lights:Lcom/android/server/LightsService;
    .end local v73           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v56

    .line 293
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_37
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 300
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v56

    .line 301
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 307
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v56

    .line 308
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 313
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v56

    .line 314
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 330
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v56

    .line 331
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_38
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 338
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v56

    .line 339
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_39
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 346
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v56

    .line 347
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 354
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v56

    .line 355
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 362
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v56

    .line 363
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 370
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v56

    .line 371
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 380
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v56

    move-object/from16 v8, v67

    .line 381
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 388
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v56

    .line 389
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 396
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v56

    .line 397
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 409
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v56

    .line 410
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 418
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v56

    .line 419
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 429
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v56

    .line 430
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 438
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v56

    .line 439
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 446
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v56

    .line 447
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 454
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v56

    .line 455
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 462
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v56

    .line 463
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 470
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v56

    .line 471
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 478
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v56

    .line 479
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 486
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v56

    .line 487
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 493
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v56

    .line 494
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 501
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v56

    .line 502
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 509
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v56

    .line 510
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 518
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v56

    .line 519
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 526
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v56

    .line 527
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 534
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v56

    .line 535
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 542
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v56

    .line 543
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 549
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v56

    .line 550
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 556
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v56

    .line 557
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 568
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v56

    .line 569
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 574
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v56

    .line 575
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 580
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v56

    .line 581
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 596
    .end local v56           #e:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_31

    .line 604
    :catch_27
    move-exception v56

    .line 605
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 612
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v56

    .line 613
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 619
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v56

    .line 620
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 639
    .end local v56           #e:Ljava/lang/Throwable;
    .restart local v46       #config:Landroid/content/res/Configuration;
    .restart local v66       #metrics:Landroid/util/DisplayMetrics;
    .restart local v92       #w:Landroid/view/WindowManager;
    :catch_2a
    move-exception v56

    .line 640
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 179
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v66           #metrics:Landroid/util/DisplayMetrics;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v92           #w:Landroid/view/WindowManager;
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #onlyCore:Z
    :catch_2b
    move-exception v3

    goto/16 :goto_5

    .line 542
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v73           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2c
    move-exception v56

    move-object/from16 v38, v39

    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_46

    .line 518
    .end local v90           #usb:Lcom/android/server/usb/UsbService;
    .restart local v91       #usb:Lcom/android/server/usb/UsbService;
    :catch_2d
    move-exception v56

    move-object/from16 v90, v91

    .end local v91           #usb:Lcom/android/server/usb/UsbService;
    .restart local v90       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_45

    .line 486
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v94       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2e
    move-exception v56

    move-object/from16 v93, v94

    .end local v94           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_44

    .line 462
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_2f
    move-exception v56

    move-object/from16 v49, v50

    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_43

    .line 454
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .restart local v65       #location:Lcom/android/server/LocationManagerService;
    :catch_30
    move-exception v56

    move-object/from16 v64, v65

    .end local v65           #location:Lcom/android/server/LocationManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_42

    .line 438
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v72       #notification:Lcom/android/server/NotificationManagerService;
    :catch_31
    move-exception v56

    move-object/from16 v71, v72

    .end local v72           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_41

    .line 418
    .end local v84           #throttle:Lcom/android/server/ThrottleService;
    .restart local v85       #throttle:Lcom/android/server/ThrottleService;
    :catch_32
    move-exception v56

    move-object/from16 v84, v85

    .end local v85           #throttle:Lcom/android/server/ThrottleService;
    .restart local v84       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_40

    .line 409
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_33
    move-exception v56

    move-object/from16 v47, v48

    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 396
    .end local v95           #wifi:Lcom/android/server/WifiService;
    .restart local v96       #wifi:Lcom/android/server/WifiService;
    :catch_34
    move-exception v56

    move-object/from16 v95, v96

    .end local v96           #wifi:Lcom/android/server/WifiService;
    .restart local v95       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_3e

    .line 388
    .end local v97           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v98       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_35
    move-exception v56

    move-object/from16 v97, v98

    .end local v98           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v97       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_3d

    .line 380
    :catch_36
    move-exception v56

    goto/16 :goto_3c

    .line 370
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_37
    move-exception v56

    move-object/from16 v12, v68

    .end local v68           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 362
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v87       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_38
    move-exception v56

    move-object/from16 v86, v87

    .end local v87           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3a

    .line 338
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v83       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_39
    move-exception v56

    move-object/from16 v82, v83

    .end local v83           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_39

    .line 330
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3a
    move-exception v56

    move-object/from16 v52, v53

    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_38

    .line 322
    :catch_3b
    move-exception v3

    goto/16 :goto_11

    .line 292
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v61       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3c
    move-exception v56

    move-object/from16 v60, v61

    .end local v61           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_37

    .line 271
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #power:Lcom/android/server/PowerManagerService;
    :catch_3d
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v75

    .end local v75           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_36

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v63       #lights:Lcom/android/server/LightsService;
    .restart local v73       #onlyCore:Z
    :catch_3e
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_3f
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_40
    move-exception v56

    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_41
    move-exception v56

    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v73           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_13
    move-object/from16 v8, v67

    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_30
.end method
