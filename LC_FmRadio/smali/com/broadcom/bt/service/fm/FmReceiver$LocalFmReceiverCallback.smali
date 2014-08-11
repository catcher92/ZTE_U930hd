.class Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;
.super Ljava/lang/Object;
.source "FmReceiver.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalFmReceiverCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;
    }
.end annotation


# static fields
.field private static final EVT_ON_AUDIO_MODE:I = 0x0

.field private static final EVT_ON_AUDIO_PATH:I = 0x1

.field private static final EVT_ON_EST_NFL:I = 0x2

.field private static final EVT_ON_LIVE_AUDIO_QUAL:I = 0x3

.field private static final EVT_ON_RDS_DATA:I = 0x4

.field private static final EVT_ON_RDS_MODE:I = 0x5

.field private static final EVT_ON_SEEK_COMPL:I = 0x6

.field private static final EVT_ON_STATUS:I = 0x7

.field private static final EVT_ON_VOL:I = 0x8

.field private static final EVT_ON_WORLD_REG:I = 0x9


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 2
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback$HandlerCreatorImpl;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V

    #calls: Lcom/broadcom/bt/service/fm/FmReceiver;->initEventCallbackHandler(Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;)Landroid/os/Handler;
    invoke-static {p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1300(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    .line 1646
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAudioModeEvent(I)V
    .locals 3
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1657
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1655
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1656
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onAudioPathEvent(I)V
    .locals 3
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1664
    :goto_0
    return-void

    .line 1661
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1662
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1663
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onEstimateNflEvent(I)V
    .locals 3
    .parameter "nfl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1671
    :goto_0
    return-void

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1669
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1670
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onLiveAudioQualityEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "snr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1674
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1679
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1676
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1677
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1678
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 3
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1683
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1684
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1685
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1686
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1687
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onRdsModeEvent(II)V
    .locals 3
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1693
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1694
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1695
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1696
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSeekCompleteEvent(IIIZ)V
    .locals 4
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "seeksuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1701
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1703
    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1704
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1705
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1706
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "RDS_SUCCESS"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1707
    const-string v2, "SNR"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1730
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1719
    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1720
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1721
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1722
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "RADIO_ON"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1723
    const-string v2, "RDS_PRGM_TYPE"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    const-string v2, "RDS_PRGM_SVC"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v2, "RDS_TXT"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v2, "RDS_PRGM_TYPE_NAME"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v2, "MUTED"

    invoke-virtual {v0, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1728
    const-string v2, "SNR"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onVolumeEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1739
    :goto_0
    return-void

    .line 1734
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1735
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1736
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1737
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onWorldRegionEvent(I)V
    .locals 3
    .parameter "worldRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1746
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1744
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1745
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
