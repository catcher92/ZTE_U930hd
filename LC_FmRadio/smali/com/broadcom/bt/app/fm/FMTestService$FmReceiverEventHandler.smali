.class Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "FMTestService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/FMTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/FMTestService;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService;Lcom/broadcom/bt/app/fm/FMTestService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;-><init>(Lcom/broadcom/bt/app/fm/FMTestService;)V

    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .locals 0
    .parameter "audioMode"

    .prologue
    .line 285
    return-void
.end method

.method public onAudioPathEvent(I)V
    .locals 0
    .parameter "audioPath"

    .prologue
    .line 288
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .locals 0
    .parameter "nfl"

    .prologue
    .line 293
    return-void
.end method

.method public onLiveAudioQualityEvent(II)V
    .locals 0
    .parameter "rssi"
    .parameter "snr"

    .prologue
    .line 297
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 0
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 301
    return-void
.end method

.method public onRdsModeEvent(II)V
    .locals 0
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    .line 305
    return-void
.end method

.method public onSeekCompleteEvent(IIIZ)V
    .locals 0
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "seeksuccess"

    .prologue
    .line 310
    return-void
.end method

.method public onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
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
    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusEvent  radioIsOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-ne p4, v3, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mRadioOn:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$900(Lcom/broadcom/bt/app/fm/FMTestService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #setter for: Lcom/broadcom/bt/app/fm/FMTestService;->mRadioOn:Z
    invoke-static {v0, v3}, Lcom/broadcom/bt/app/fm/FMTestService;->access$902(Lcom/broadcom/bt/app/fm/FMTestService;Z)Z

    .line 279
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #calls: Lcom/broadcom/bt/app/fm/FMTestService;->doWhenRadioOn()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$1000(Lcom/broadcom/bt/app/fm/FMTestService;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onVolumeEvent(II)V
    .locals 0
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 318
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .locals 0
    .parameter "worldRegion"

    .prologue
    .line 314
    return-void
.end method
