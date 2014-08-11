.class Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 562
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 563
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 565
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "READ_CARD_RECORD_NUM_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    monitor-enter v2

    .line 567
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 568
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/IccCardInfo;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->access$402(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;Landroid/telephony/IccCardInfo;)Landroid/telephony/IccCardInfo;

    .line 569
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccCardInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->access$400(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;)Landroid/telephony/IccCardInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->access$502(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;Z)Z

    .line 572
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 573
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
