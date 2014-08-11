.class Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl$1;
.super Landroid/os/Handler;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;->create()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl$1;->this$2:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, -0x7e

    const/4 v12, 0x0

    .line 1592
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl$1;->this$2:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;

    iget-object v1, v1, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;->this$1:Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;

    iget-object v1, v1, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    .line 1593
    .local v0, eventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    if-nez v0, :cond_0

    .line 1639
    :goto_0
    return-void

    .line 1594
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1596
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V

    goto :goto_0

    .line 1599
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V

    goto :goto_0

    .line 1602
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V

    goto :goto_0

    .line 1605
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(II)V

    goto :goto_0

    .line 1608
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v12, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 1611
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V

    goto :goto_0

    .line 1615
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 1616
    .local v10, b:Landroid/os/Bundle;
    const-string v1, "SNR"

    invoke-virtual {v10, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1617
    .local v3, fmSnr:I
    const-string v1, "RDS_SUCCESS"

    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1618
    .local v11, seekSuccess:Z
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3, v11}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIIZ)V

    goto :goto_0

    .line 1622
    .end local v3           #fmSnr:I
    .end local v10           #b:Landroid/os/Bundle;
    .end local v11           #seekSuccess:Z
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 1623
    .restart local v10       #b:Landroid/os/Bundle;
    const-string v1, "RADIO_ON"

    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1624
    .local v4, radioIsOn:Z
    const-string v1, "RDS_PRGM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1625
    .local v5, rdsProgramType:I
    const-string v1, "RDS_PRGM_SVC"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1626
    .local v6, rdsProgramService:Ljava/lang/String;
    const-string v1, "RDS_TXT"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1627
    .local v7, rdsRadioText:Ljava/lang/String;
    const-string v1, "RDS_PRGM_TYPE_NAME"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1628
    .local v8, rdsProgramTypeName:Ljava/lang/String;
    const-string v1, "MUTED"

    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1629
    .local v9, isMute:Z
    const-string v1, "SNR"

    invoke-virtual {v10, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1630
    .restart local v3       #fmSnr:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1633
    .end local v3           #fmSnr:I
    .end local v4           #radioIsOn:Z
    .end local v5           #rdsProgramType:I
    .end local v6           #rdsProgramService:Ljava/lang/String;
    .end local v7           #rdsRadioText:Ljava/lang/String;
    .end local v8           #rdsProgramTypeName:Ljava/lang/String;
    .end local v9           #isMute:Z
    .end local v10           #b:Landroid/os/Bundle;
    :pswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V

    goto/16 :goto_0

    .line 1636
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V

    goto/16 :goto_0

    .line 1594
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
