.class Lcom/android/server/TwService$MyHanlder;
.super Landroid/os/Handler;
.source "TwService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHanlder"
.end annotation


# static fields
.field private static final GET_GSM_AUTH:I = 0x2

.field private static final GET_IMSI:I = 0x1

.field private static final GET_SIM_TYPE:I = 0x0

.field private static final GET_UMTS_AUTH:I = 0x3


# instance fields
.field private ar:Landroid/os/AsyncResult;

.field final synthetic this$0:Lcom/android/server/TwService;


# direct methods
.method private constructor <init>(Lcom/android/server/TwService;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TwService;Lcom/android/server/TwService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/TwService$MyHanlder;-><init>(Lcom/android/server/TwService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 430
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 435
    :pswitch_0
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] GET_SIM_TYPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, cardType:I
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 438
    const/4 v0, 0x1

    .line 443
    :goto_1
    sget-object v7, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v7}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 448
    .end local v0           #cardType:I
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, imsi:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 450
    .local v2, mStringBuffer:Ljava/lang/StringBuffer;
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getIdentity] imsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v12, :cond_2

    .line 453
    const-string v7, "@wlan.mnc0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const-string v7, ".mcc"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    const-string v7, ".3gppnetwork.org"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] GET_IMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v7, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v7}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v7

    invoke-static {v7, v1}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 465
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #mStringBuffer:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] GET_GSM_AUTH rand = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 467
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->doSimAuth(Ljava/lang/String;)Landroid/telephony/SimAuthCnf;

    move-result-object v3

    .line 468
    .local v3, sim:Landroid/telephony/SimAuthCnf;
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] GET_GSM_AUTH = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v7, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v7}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 474
    .end local v3           #sim:Landroid/telephony/SimAuthCnf;
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 475
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, tmpAr:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aget-object v9, v4, v10

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/UsimAuthCnf;

    move-result-object v5

    .line 477
    .local v5, usim:Landroid/telephony/UsimAuthCnf;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    .local v6, usimsb:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Landroid/telephony/UsimAuthCnf;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    iget-object v7, v5, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    :cond_3
    iget-object v7, v5, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 483
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    :cond_4
    iget-object v7, v5, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_5
    iget-object v7, v5, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    :cond_6
    const-string v7, "TwService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage] GET_UMTS_AUTH = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v7, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v7}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
