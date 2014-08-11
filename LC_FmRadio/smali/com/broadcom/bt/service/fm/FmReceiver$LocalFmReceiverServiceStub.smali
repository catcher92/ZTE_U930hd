.class Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;
.super Ljava/lang/Object;
.source "FmReceiver.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalFmReceiverServiceStub"
.end annotation


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 1753
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 1755
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    return-object v0
.end method

.method public estimateNoiseFloorLevel(I)I
    .locals 1
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorLevel(I)I

    move-result v0

    return v0
.end method

.method public getIsMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1812
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getIsMute()Z

    move-result v0

    return v0
.end method

.method public getMonoStereoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1800
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getMonoStereoMode()I

    move-result v0

    return v0
.end method

.method public getRadioIsOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1794
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getRadioIsOn()Z

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1818
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getStatus()I

    move-result v0

    return v0
.end method

.method public getTunedFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1806
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getTunedFrequency()I

    move-result v0

    return v0
.end method

.method public getTurnOnState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1787
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getTurnOnState()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1762
    const-string v0, "FmReceiver"

    const-string v1, "init():initializeServiceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeServiceState()V

    .line 1764
    return-void
.end method

.method public muteAudio(Z)I
    .locals 1
    .parameter "mute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1824
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteAudio(Z)I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1768
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 1770
    return-void
.end method

.method public seekRdsStation(IIII)I
    .locals 1
    .parameter "scanDirection"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1831
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public seekStation(II)I
    .locals 1
    .parameter "scanDirection"
    .parameter "minSignalStrength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1837
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public seekStationAbort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1851
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationAbort()I

    move-result v0

    return v0
.end method

.method public seekStationCombo(IIIIIZII)I
    .locals 9
    .parameter "startFrequency"
    .parameter "endFrequency"
    .parameter "minSignalStrength"
    .parameter "scanDirection"
    .parameter "scanMethod"
    .parameter "multi_channel"
    .parameter "rdsType"
    .parameter "rdsTypeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1845
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationCombo(IIIIIZII)I

    move-result v0

    return v0
.end method

.method public setAudioMode(I)I
    .locals 1
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1857
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioMode(I)I

    move-result v0

    return v0
.end method

.method public setAudioPath(I)I
    .locals 1
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I

    move-result v0

    return v0
.end method

.method public setFMVolume(I)I
    .locals 1
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1869
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolume(I)I

    move-result v0

    return v0
.end method

.method public setLiveAudioPolling(ZI)I
    .locals 1
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1875
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setLiveAudioPolling(ZI)I

    move-result v0

    return v0
.end method

.method public setMinMaxFreq(II)I
    .locals 1
    .parameter "minFreq"
    .parameter "maxFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setMinMaxFreq(II)I

    move-result v0

    return v0
.end method

.method public setRdsMode(IIII)I
    .locals 1
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1893
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsMode(IIII)I

    move-result v0

    return v0
.end method

.method public setSNRThreshold(I)I
    .locals 1
    .parameter "snrThreshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setSNRThreshold(I)I

    move-result v0

    return v0
.end method

.method public setStepSize(I)I
    .locals 1
    .parameter "stepSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1899
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setStepSize(I)I

    move-result v0

    return v0
.end method

.method public setWorldRegion(II)I
    .locals 1
    .parameter "worldRegion"
    .parameter "deemphasisTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1905
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setWorldRegion(II)I

    move-result v0

    return v0
.end method

.method public tuneRadio(I)I
    .locals 1
    .parameter "freq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1911
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneRadio(I)I

    move-result v0

    return v0
.end method

.method public turnOffRadio()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1917
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I

    move-result v0

    return v0
.end method

.method public turnOnRadio(I)I
    .locals 1
    .parameter "functionalityMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1923
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 1776
    return-void
.end method
