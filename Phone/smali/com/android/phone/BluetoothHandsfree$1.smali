.class Lcom/android/phone/BluetoothHandsfree$1;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1474
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHandsfree;->access$5202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1476
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 1477
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1479
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1481
    :cond_0
    monitor-exit v1

    .line 1485
    :cond_1
    :goto_0
    return-void

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1482
    .restart local p2
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHandsfree;->access$5502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 1487
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0
.end method
