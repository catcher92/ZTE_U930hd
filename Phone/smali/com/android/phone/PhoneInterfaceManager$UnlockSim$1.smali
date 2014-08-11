.class Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 662
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 663
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 673
    :goto_0
    return-void

    .line 665
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SUPPLY_PIN_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    monitor-enter v2

    .line 667
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v4, 0x0

    aget v1, v1, v4

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$602(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    .line 668
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z

    .line 669
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 670
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 663
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
