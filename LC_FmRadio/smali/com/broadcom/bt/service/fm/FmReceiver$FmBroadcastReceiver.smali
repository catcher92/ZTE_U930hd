.class Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, -0x7e

    const/4 v11, 0x0

    const/4 v6, -0x1

    .line 1535
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    .line 1536
    .local v0, handler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    if-nez v0, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->abortBroadcast()V

    .line 1542
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 1543
    .local v10, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1544
    const-string v1, "FREQ"

    invoke-virtual {p2, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SNR"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "RADIO_ON"

    invoke-virtual {p2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "RDS_PRGM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "RDS_PRGM_SVC"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RDS_TXT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RDS_PRGM_TYPE_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MUTED"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1549
    :cond_2
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1550
    const-string v1, "AUDIO_MODE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V

    goto :goto_0

    .line 1551
    :cond_3
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1552
    const-string v1, "AUDIO_PATH"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V

    goto :goto_0

    .line 1553
    :cond_4
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1554
    const-string v1, "RSSI"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SNR"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(II)V

    goto/16 :goto_0

    .line 1555
    :cond_5
    const-string v1, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1556
    const-string v1, "NFL"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V

    goto/16 :goto_0

    .line 1557
    :cond_6
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1558
    const-string v1, "RDS_DATA_TYPE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RDS_IDX"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RDS_TXT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1560
    :cond_7
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1561
    const-string v1, "RDS_MODE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ALT_FREQ_MODE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V

    goto/16 :goto_0

    .line 1563
    :cond_8
    const-string v1, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1564
    const-string v1, "FREQ"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SNR"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "RDS_SUCCESS"

    invoke-virtual {p2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIIZ)V

    goto/16 :goto_0

    .line 1566
    :cond_9
    const-string v1, "ON_VOL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1567
    const-string v1, "STATUS"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "VOL"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V

    goto/16 :goto_0

    .line 1568
    :cond_a
    const-string v1, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100()I

    move-result v2

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v10, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    const-string v1, "WRLD_RGN"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V

    goto/16 :goto_0
.end method
