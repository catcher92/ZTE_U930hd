.class public Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayNewAfState(I)V
    .locals 3
    .parameter "afMode"

    .prologue
    .line 2383
    const-string v1, "FmRxRadio"

    const-string v2, "displayNewAfState  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2386
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2387
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2388
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    return-void
.end method

.method private displayNewFrequency(II)V
    .locals 4
    .parameter "freq"
    .parameter "isCompletedSeekInt"

    .prologue
    .line 2398
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewFrequency  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2401
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2402
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2403
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2404
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2405
    return-void
.end method

.method private displayNewMutedState(Z)V
    .locals 4
    .parameter "isMute"

    .prologue
    .line 2415
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewMutedState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2418
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2419
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2421
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2422
    return-void

    .line 2419
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private displayNewRdsData(IILjava/lang/String;)V
    .locals 3
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 2345
    const-string v1, "FmRxRadio"

    const-string v2, "displayNewRdsData  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2348
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2349
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2350
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2351
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRdsProgramTypes:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2354
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRdsProgramTypes:[Ljava/lang/String;

    aget-object v1, v1, p2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2358
    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2356
    :cond_2
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method private displayNewRdsState(I)V
    .locals 4
    .parameter "rdsMode"

    .prologue
    .line 2368
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewRdsState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2371
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2372
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2373
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2374
    return-void
.end method

.method private displayNewSignalStrength(I)V
    .locals 4
    .parameter "rssi"

    .prologue
    .line 2335
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewSignalStrength  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2338
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2339
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2340
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2341
    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 2426
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2430
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2431
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2432
    return-void
.end method

.method public onAudioPathEvent(I)V
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 2436
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioPathEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2440
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2441
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2442
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .locals 4
    .parameter "nfl"

    .prologue
    .line 2446
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEstimateNoiseFloorLevelEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2451
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    sput p1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->LOW_SIGNAL_STRENGTH:I

    .line 2452
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    add-int/lit8 v1, p1, -0xf

    sput v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MEDIUM_SIGNAL_STRENGTH:I

    .line 2453
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    add-int/lit8 v1, p1, -0x19

    sput v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->HIGH_SIGNAL_STRENGTH:I

    .line 2455
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2456
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2457
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2458
    return-void
.end method

.method public onLiveAudioQualityEvent(II)V
    .locals 4
    .parameter "rssi"
    .parameter "snr"

    .prologue
    .line 2462
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLiveAudioQualityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 2469
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2470
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2471
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2472
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 4
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 2476
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRdsDataEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewRdsData(IILjava/lang/String;)V

    .line 2484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2485
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2486
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    return-void
.end method

.method public onRdsModeEvent(II)V
    .locals 4
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    .line 2491
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRdsModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewRdsState(I)V

    .line 2499
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewAfState(I)V

    .line 2502
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2503
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2504
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2505
    return-void
.end method

.method public onSeekCompleteEvent(IIIZ)V
    .locals 8
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "seeksuccess"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2510
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSeekCompleteEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2516
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2517
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-gt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2518
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z
    invoke-static {v2, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2589
    :cond_1
    :goto_0
    return-void

    .line 2521
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 2522
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z
    invoke-static {v2, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2523
    iput v7, v1, Landroid/os/Message;->what:I

    .line 2524
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2526
    const-string v2, "FM signal-seek"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seek Reach to Max...freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2530
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-gt p1, v2, :cond_4

    .line 2531
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z
    invoke-static {v2, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2532
    iput v7, v1, Landroid/os/Message;->what:I

    .line 2533
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2535
    const-string v2, "FM signal-seek"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seek Reach to Min...freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2540
    :cond_4
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z
    invoke-static {v2, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2542
    :cond_5
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v2, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2402(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2543
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-ge p1, v2, :cond_6

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-le p1, v2, :cond_6

    .line 2544
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v2, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2547
    invoke-direct {p0, p1, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    .line 2549
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 2552
    :cond_6
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2553
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searching..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-lt p1, v2, :cond_7

    .line 2557
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searching complete, total found Radio Station is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchEnd()V

    goto/16 :goto_0

    .line 2564
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 2565
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 2564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2569
    :cond_8
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2571
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    sub-int v3, p1, v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2574
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1708(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    .line 2575
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2579
    .end local v0           #i:I
    :cond_9
    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2580
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    const/4 v4, 0x0

    .line 2596
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    if-eqz p4, :cond_1

    .line 2603
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2611
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-boolean v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 2612
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2613
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 2615
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    .line 2658
    :goto_1
    return-void

    .line 2606
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v2, 0x2

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2702(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2608
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2802(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    goto :goto_0

    .line 2619
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eq v1, p4, :cond_3

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2620
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2641
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2642
    invoke-direct {p0, p1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    .line 2645
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 2648
    :cond_4
    invoke-direct {p0, p9}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewMutedState(Z)V

    .line 2655
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2656
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2657
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onVolumeEvent(II)V
    .locals 4
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2675
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2680
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2681
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2682
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .locals 4
    .parameter "worldRegion"

    .prologue
    .line 2662
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWorldRegionEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2902(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2668
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2669
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2670
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2671
    return-void
.end method
