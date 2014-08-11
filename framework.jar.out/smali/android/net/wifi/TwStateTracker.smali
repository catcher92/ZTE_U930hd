.class public Landroid/net/wifi/TwStateTracker;
.super Ljava/lang/Object;
.source "TwStateTracker.java"

# interfaces
.implements Landroid/net/wifi/TwNative$TWCallBackInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwStateTracker"


# instance fields
.field private isWpaInit:Z

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTwService:Landroid/net/wifi/TwManager;

.field private mTwState:Landroid/net/wifi/TwState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v1, Landroid/net/wifi/TwState;->INACTIVE:Landroid/net/wifi/TwState;

    iput-object v1, p0, Landroid/net/wifi/TwStateTracker;->mTwState:Landroid/net/wifi/TwState;

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/TwStateTracker;->isWpaInit:Z

    .line 30
    new-instance v1, Landroid/net/wifi/TwStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/TwStateTracker$1;-><init>(Landroid/net/wifi/TwStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/TwStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Landroid/net/wifi/TwStateTracker;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p0}, Landroid/net/wifi/TwNative;->TwRegCallback(Ljava/lang/Object;)I

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/TwStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/TwStateTracker;)Landroid/net/wifi/TwManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/TwStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/net/wifi/TwStateTracker;->init()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/TwStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Landroid/net/wifi/TwStateTracker;->isWpaInit:Z

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/TwStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Landroid/net/wifi/TwStateTracker;->isWpaInit:Z

    return p1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 80
    const-string/jumbo v1, "tw_wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, b:Landroid/os/IBinder;
    const-string v1, "TwStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TwStateTracker] b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Landroid/net/wifi/TwManager;

    invoke-static {v0}, Landroid/net/wifi/ITwManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITwManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/TwManager;-><init>(Landroid/net/wifi/ITwManager;)V

    iput-object v1, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    .line 83
    const-string v1, "TwStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TwStateTracker] mTwService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method private notifyTwStateChange()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.TW_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "tw_state"

    iget-object v2, p0, Landroid/net/wifi/TwStateTracker;->mTwState:Landroid/net/wifi/TwState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string v1, "TwStateTracker"

    const-string/jumbo v2, "notifyTwStateChange \n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Landroid/net/wifi/TwStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getTwState()Landroid/net/wifi/TwState;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwState:Landroid/net/wifi/TwState;

    return-object v0
.end method

.method public sendEventCallBack(ILjava/lang/String;)V
    .locals 3
    .parameter "eventId"
    .parameter "data"

    .prologue
    .line 88
    const-string v0, "TwStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendEventCallBack] eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v0}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 91
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    invoke-virtual {v0}, Landroid/net/wifi/TwManager;->getSimType()I

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v0}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 94
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    invoke-virtual {v0}, Landroid/net/wifi/TwManager;->getImsi()I

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v0}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 98
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/TwManager;->getGsmAuth(Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    sget-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v0}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwService:Landroid/net/wifi/TwManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/TwManager;->getUmtsAuth(Ljava/lang/String;)I

    .line 103
    const-string v0, "TwStateTracker"

    const-string v1, "[sendEventCallBack] mTwService.getUmtsAuth(data); end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setTwState(Landroid/net/wifi/TwState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    const-string v0, "TwStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTwState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Landroid/net/wifi/TwStateTracker;->mTwState:Landroid/net/wifi/TwState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/net/wifi/TwStateTracker;->mTwState:Landroid/net/wifi/TwState;

    .line 75
    invoke-direct {p0}, Landroid/net/wifi/TwStateTracker;->notifyTwStateChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
