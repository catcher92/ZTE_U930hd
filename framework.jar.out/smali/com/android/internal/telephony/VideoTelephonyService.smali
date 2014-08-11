.class public Lcom/android/internal/telephony/VideoTelephonyService;
.super Lcom/android/internal/telephony/IVideoTelephony$Stub;
.source "VideoTelephonyService.java"


# static fields
.field public static final ACTION_VIDEO_TELEPHONY_SERVICE_READY:Ljava/lang/String; = "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_READY"

.field private static final ACTION_VIDEO_TELEPHONY_SERVICE_SHOW_CALLSCREEN:Ljava/lang/String; = "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_SHOW_CALLSCREEN"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VideoTelephonyService"

.field private static final PHONE_DISCONNECTED:I = 0x3

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field public static final PHONE_STATE_CHANGED_ACTIVE:I = 0x1

.field public static final PHONE_STATE_CHANGED_ALERTING:I = 0x4

.field public static final PHONE_STATE_CHANGED_DIALING:I = 0x3

.field public static final PHONE_STATE_CHANGED_DISCONNECTED:I = 0x7

.field public static final PHONE_STATE_CHANGED_DISCONNECTING:I = 0x8

.field public static final PHONE_STATE_CHANGED_HOLDING:I = 0x2

.field public static final PHONE_STATE_CHANGED_INCOMING:I = 0x5

.field public static final PHONE_STATE_CHANGED_WAITING:I = 0x6

.field public static final VT_ANSWER_EXCEPTION:I = -0x4

.field public static final VT_ANSWER_FALLBACK_EXCEPTION:I = -0x5

.field public static final VT_DIAL_EXCEPTION:I = -0x1

.field public static final VT_DISCONNECT_BASE:I = 0x3e8

.field public static final VT_DISCONNECT_BEARER_NOT_AUTHORIZED:I = 0x3fb

.field public static final VT_DISCONNECT_BEARER_NOT_AVAIL:I = 0x3fc

.field public static final VT_DISCONNECT_BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x403

.field public static final VT_DISCONNECT_BUSY:I = 0x3f3

.field public static final VT_DISCONNECT_CONGESTION:I = 0x406

.field public static final VT_DISCONNECT_CONNECTED:I = 0x3fe

.field public static final VT_DISCONNECT_DESTINATION_OUT_OF_ORDER:I = 0x3f7

.field public static final VT_DISCONNECT_DISCONNECTED:I = 0x3ff

.field public static final VT_DISCONNECT_DISCONNECTED_INCOMING_MISSED:I = 0x407

.field public static final VT_DISCONNECT_INCOMING_REJECTED:I = 0x3f5

.field public static final VT_DISCONNECT_INCOMPATIBLE_DESTINATION:I = 0x3f9

.field public static final VT_DISCONNECT_INVALID_NUMBER:I = 0x3f4

.field public static final VT_DISCONNECT_LOST_SIGNAL:I = 0x400

.field public static final VT_DISCONNECT_NORMAL_UNSPECIFIED:I = 0x401

.field public static final VT_DISCONNECT_NO_USER_RESPONDING:I = 0x405

.field public static final VT_DISCONNECT_NUMBER_CHANGED:I = 0x3fd

.field public static final VT_DISCONNECT_POWER_OFF:I = 0x3f6

.field public static final VT_DISCONNECT_PROTOCOL_ERROR:I = 0x402

.field public static final VT_DISCONNECT_RESOURCES_NOT_AVAIL:I = 0x3fa

.field public static final VT_DISCONNECT_SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x404

.field public static final VT_DISCONNECT_UNOBTAINABLE_NUMBER:I = 0x3f8

.field public static final VT_DISCONNECT_USER_ALERTING_NO_ANSWER:I = 0x3f2

.field public static final VT_HUNGUP_EXCEPTION:I = -0x2

.field public static final VT_HUNGUP_UDUB_EXCEPTION:I = -0x3

.field private static final VT_REMOTE_CODEC_INFO:I = 0x7

.field private static final VT_REMOTE_REQ_DATA:I = 0x6

.field private static final VT_REMOTE_USER_CMD:I = 0x5

.field private static final VT_REMOTE_USER_INPUT:I = 0x4

.field private static final VT_SEND_USER_CMD_DONE:I = 0x9

.field private static final VT_SEND_USER_INPUT_DONE:I = 0x8


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/telephony/IVideoTelephonyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private mHandler:Landroid/os/Handler;

.field mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/IVideoTelephony$Stub;-><init>()V

    .line 71
    iput-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/VideoTelephonyService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/VideoTelephonyService$1;-><init>(Lcom/android/internal/telephony/VideoTelephonyService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/internal/telephony/VideoTelephonyService$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/VideoTelephonyService$2;-><init>(Lcom/android/internal/telephony/VideoTelephonyService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVTSTR(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVTSend(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVTData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVTCodec(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/VideoTelephonyService;->publish()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onDisconnected(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteUserInput(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteUserCMD(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteReqData(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteCodecInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/VideoTelephonyService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->success:Z

    return p1
.end method

.method private disconnectCodeFromCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 2
    .parameter "cause"

    .prologue
    const/16 v0, 0x402

    .line 454
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_1

    .line 455
    const/16 v0, 0x407

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_2

    .line 458
    const/16 v0, 0x3f3

    goto :goto_0

    .line 460
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_3

    .line 461
    const/16 v0, 0x406

    goto :goto_0

    .line 463
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_4

    .line 464
    const/16 v0, 0x3f4

    goto :goto_0

    .line 466
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_5

    .line 467
    const/16 v0, 0x400

    goto :goto_0

    .line 469
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_6

    .line 470
    const/16 v0, 0x3f5

    goto :goto_0

    .line 472
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_7

    .line 473
    const/16 v0, 0x3f6

    goto :goto_0

    .line 475
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_8

    .line 476
    const/16 v0, 0x3f8

    goto :goto_0

    .line 478
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_9

    .line 479
    const/16 v0, 0x405

    goto :goto_0

    .line 481
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_a

    .line 482
    const/16 v0, 0x3f2

    goto :goto_0

    .line 484
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_b

    .line 485
    const/16 v0, 0x3fd

    goto :goto_0

    .line 487
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DESTINATION_OUT_OF_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_c

    .line 488
    const/16 v0, 0x3f7

    goto :goto_0

    .line 490
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    .line 493
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_d

    .line 494
    const/16 v0, 0x401

    goto :goto_0

    .line 496
    :cond_d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCES_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_e

    .line 497
    const/16 v0, 0x3fa

    goto :goto_0

    .line 499
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_f

    .line 500
    const/16 v0, 0x3fb

    goto :goto_0

    .line 502
    :cond_f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_10

    .line 503
    const/16 v0, 0x3fc

    goto :goto_0

    .line 505
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_SERVICE_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_11

    .line 506
    const/16 v0, 0x403

    goto :goto_0

    .line 508
    :cond_11
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_OR_OPTION_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_12

    .line 509
    const/16 v0, 0x404

    goto :goto_0

    .line 511
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_13

    .line 512
    const/16 v0, 0x3f9

    goto/16 :goto_0

    .line 514
    :cond_13
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    .line 518
    const/16 v0, 0x3ff

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 652
    const-string v0, "VideoTelephonyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method private onDisconnected(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "r"

    .prologue
    const/4 v9, 0x0

    .line 370
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 372
    .local v6, cn:Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mConnection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 374
    if-nez v6, :cond_1

    .line 375
    const-string v7, "cn == null"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v7, :cond_0

    .line 377
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/VideoTelephonyService;->onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 378
    iput-object v9, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isVoice()Z

    move-result v7

    if-nez v7, :cond_2

    .line 382
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, address:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    .line 384
    .local v2, isIncoming:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 385
    .local v3, createTime:J
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 387
    .local v5, numberPresentation:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnection: address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isIncoming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " createTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numberPresentation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/android/internal/telephony/gsm/VTConnectionData;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/VTConnectionData;-><init>(Ljava/lang/String;ZJI)V

    .line 390
    .local v0, vtcd:Lcom/android/internal/telephony/gsm/VTConnectionData;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/VideoTelephonyService;->onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;Lcom/android/internal/telephony/gsm/VTConnectionData;)V

    .line 391
    iput-object v9, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0

    .line 393
    .end local v0           #vtcd:Lcom/android/internal/telephony/gsm/VTConnectionData;
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #isIncoming:Z
    .end local v3           #createTime:J
    .end local v5           #numberPresentation:I
    :cond_2
    const-string v7, "Disconnect: voice call"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->disconnectCodeFromCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->callbackDisconnect(ILcom/android/internal/telephony/gsm/VTConnectionData;)V

    .line 446
    return-void
.end method

.method private onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;Lcom/android/internal/telephony/gsm/VTConnectionData;)V
    .locals 1
    .parameter "cause"
    .parameter "vtcd"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService;->disconnectCodeFromCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/VideoTelephonyService;->callbackDisconnect(ILcom/android/internal/telephony/gsm/VTConnectionData;)V

    .line 451
    return-void
.end method

.method private onError(I)V
    .locals 5
    .parameter "exception"

    .prologue
    .line 414
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 416
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 418
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Error to broadcast onError"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 424
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 425
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 341
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 343
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVoice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    const-string v1, "It\'s new video call ringing"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->onNewRingingConnection(Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method private onNewRingingConnection(Ljava/lang/String;)V
    .locals 6
    .parameter "number"

    .prologue
    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 353
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 354
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 356
    if-eqz p1, :cond_0

    .line 357
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onNewRingingConnection(Ljava/lang/String;)V

    .line 354
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    const-string/jumbo v5, "unknown number"

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onNewRingingConnection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 366
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 365
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 366
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    return-void
.end method

.method private onPhoneStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPhoneStateChanged(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 319
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPhoneStateChanged begin broadcast state"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 321
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 322
    const-string/jumbo v3, "onPhoneStateChanged loop"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 332
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catch_1
    move-exception v1

    .line 333
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "callback failure."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    return-void

    .line 330
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 336
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 303
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "It\'s not video call"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->onPhoneStateChanged(I)V

    goto :goto_0
.end method

.method private onRemoteCodecInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 589
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 590
    .local v1, codecInfo:[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteCodecInfo codecInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 591
    if-eqz v1, :cond_1

    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 592
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 593
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 594
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 596
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onReceiveCodecInfo([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :catch_0
    move-exception v2

    .line 598
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "callback failure"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 603
    .end local v0           #N:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 602
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 603
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method private onRemoteReqData(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 608
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 609
    .local v4, resultData:[I
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 610
    const/4 v5, 0x0

    aget v3, v4, v5

    .line 611
    .local v3, indication:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRemoteReqData indi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 612
    iget-object v6, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 613
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 614
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 616
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onRemoteReqData(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "callback failure"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 623
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 622
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 623
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #indication:I
    :cond_1
    return-void
.end method

.method private onRemoteReqIFrame(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 628
    const-string/jumbo v3, "onRemoteReqIFrame"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 629
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 630
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 631
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 633
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onRemoteReqIFrame()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 640
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 639
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 640
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    return-void
.end method

.method private onRemoteUserCMD(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 570
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 571
    .local v3, userCmd:[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUserCMD userCmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 572
    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 573
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 574
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 575
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 577
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IVideoTelephonyListener;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onRemoteUserCMD(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "callback failure"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 584
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 583
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 584
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private onRemoteUserInput(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 552
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 553
    .local v3, inputString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUserInput string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 554
    iget-object v5, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 555
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 556
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 558
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onRemoteUserInput(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "callback failure"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 565
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 564
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 565
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    return-void
.end method

.method private publish()V
    .locals 3

    .prologue
    .line 129
    const-string/jumbo v0, "videophone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 2

    .prologue
    .line 179
    const-string v1, "Answer video call"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->vtAcceptCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->onError(I)V

    .line 184
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    const-string v2, "Cannot dial: not in idle state"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->onError(I)V

    .line 175
    :goto_0
    return v1

    .line 163
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->vtdial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_2

    .line 171
    const-string v2, "mConnection = null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->onError(I)V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 166
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->onError(I)V

    goto :goto_0

    .line 175
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method callbackDisconnect(ILcom/android/internal/telephony/gsm/VTConnectionData;)V
    .locals 6
    .parameter "state"
    .parameter "vtcd"

    .prologue
    .line 430
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 431
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 432
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 434
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IVideoTelephonyListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IVideoTelephonyListener;->onDisconnected(ILcom/android/internal/telephony/gsm/VTConnectionData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "VideoTelephonyService"

    const-string v5, "Error to broadcast onDisconnect."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 441
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 440
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 441
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    return-void
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End mConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupVideoCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fallback()Z
    .locals 3

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback mConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->fallback()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public getVideoPhoneServiceState()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public hasVideoCall()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 287
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 288
    .local v0, cForeground:Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 290
    .local v1, cRinging:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVoice()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVideoCall cForeground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 298
    :goto_0
    return v2

    .line 294
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isVoice()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVideoCall cRinging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public register(Lcom/android/internal/telephony/IVideoTelephonyListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 144
    return-void
.end method

.method public rejectCall()Z
    .locals 3

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End mConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupVideoCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendUserCmd(II)Z
    .locals 5
    .parameter "type"
    .parameter "active"

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaCmd type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->success:Z

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendVTCMD(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    iget-boolean v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->success:Z

    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "interrupted while trying to sendUserCmd"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public sendUserInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUserInput s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->success:Z

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendVTStr(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    iget-boolean v1, p0, Lcom/android/internal/telephony/VideoTelephonyService;->success:Z

    return v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "interrupted while trying to sendUserInput"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public showCallScreen()Z
    .locals 3

    .prologue
    .line 645
    const-string v0, "VideoTelephonyService: showCallScreen!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_SHOW_CALLSCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public unregister(Lcom/android/internal/telephony/IVideoTelephonyListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 148
    return-void
.end method
