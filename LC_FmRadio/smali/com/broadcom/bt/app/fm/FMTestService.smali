.class public Lcom/broadcom/bt/app/fm/FMTestService;
.super Landroid/app/Service;
.source "FMTestService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;
    }
.end annotation


# static fields
.field private static final mPathKeyHeadphone:Ljava/lang/String; = "routing=12"

.field private static final mPathKeySpeaker:Ljava/lang/String; = "routing=2"

.field static final proxyAvail:Ljava/lang/String; = "com.broadcom.bt.app.fm.FMTestService.FmTestIntOk"


# instance fields
.field private TAG:Ljava/lang/String;

.field private initFreq:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Lcom/broadcom/bt/app/fm/IFMTestService$Stub;

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMaxFreq:I

.field private mMinFreq:I

.field private mPendingRegion:I

.field private mRadioOn:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    const-string v0, "FMTestService"

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mPendingRegion:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    .line 134
    new-instance v0, Lcom/broadcom/bt/app/fm/FMTestService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/FMTestService$1;-><init>(Lcom/broadcom/bt/app/fm/FMTestService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mBinder:Lcom/broadcom/bt/app/fm/IFMTestService$Stub;

    .line 246
    new-instance v0, Lcom/broadcom/bt/app/fm/FMTestService$3;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/FMTestService$3;-><init>(Lcom/broadcom/bt/app/fm/FMTestService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/app/fm/FMTestService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/FMTestService;->doWhenRadioOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/FMTestService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    return v0
.end method

.method static synthetic access$202(Lcom/broadcom/bt/app/fm/FMTestService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    return p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/FMTestService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->initFreq:I

    return v0
.end method

.method static synthetic access$302(Lcom/broadcom/bt/app/fm/FMTestService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/broadcom/bt/app/fm/FMTestService;->initFreq:I

    return p1
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/fm/FMTestService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/fm/FMTestService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMaxFreq:I

    return v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/fm/FMTestService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/fm/FMTestService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/fm/FMTestService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mRadioOn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/broadcom/bt/app/fm/FMTestService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mRadioOn:Z

    return p1
.end method

.method private doWhenRadioOn()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/app/fm/FMTestService$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/FMTestService$2;-><init>(Lcom/broadcom/bt/app/fm/FMTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method private updateMinMaxFrequencies()V
    .locals 4

    .prologue
    const/16 v3, 0x2a30

    const/16 v2, 0x2328

    .line 229
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mPendingRegion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mPendingRegion:I

    if-nez v0, :cond_2

    .line 231
    :cond_0
    const/16 v0, 0x222e

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I

    .line 232
    iput v3, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mPendingRegion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 234
    const/16 v0, 0x1db0

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I

    .line 235
    iput v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMaxFreq:I

    goto :goto_0

    .line 236
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mPendingRegion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 237
    iput v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I

    .line 238
    iput v3, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mMaxFreq:I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMTestService.onBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mBinder:Lcom/broadcom/bt/app/fm/IFMTestService$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mBinder:Lcom/broadcom/bt/app/fm/IFMTestService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/FMTestService;->updateMinMaxFrequencies()V

    .line 103
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FMTestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FMTestService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "ProxyObject"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    const-string v1, "onProxyAvailable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_0

    .line 187
    check-cast p1, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    const-string v1, "onProxyAvailable error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;-><init>(Lcom/broadcom/bt/app/fm/FMTestService;Lcom/broadcom/bt/app/fm/FMTestService$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;

    .line 195
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 197
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProxyAvailable mFmReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProxyAvailable initFreq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->initFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn on radio status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/FMTestService;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/FMTestService;->doWhenRadioOn()V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method
