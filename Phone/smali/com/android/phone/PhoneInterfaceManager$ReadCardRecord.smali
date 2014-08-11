.class Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadCardRecord"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccCardInfo:Landroid/telephony/IccCardInfo;

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mDone:Z

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;

    .line 553
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 554
    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;)Landroid/telephony/IccCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;Landroid/telephony/IccCardInfo;)Landroid/telephony/IccCardInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized getInfo(I)Landroid/telephony/IccCardInfo;
    .locals 5
    .parameter "infoId"

    .prologue
    .line 584
    monitor-enter p0

    const/4 v2, 0x0

    .line 585
    .local v2, msgId:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 587
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 584
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 592
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 604
    :goto_1
    :pswitch_0
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 605
    .local v0, callback:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCard;->readRecordNum(Landroid/os/Message;)V

    .line 606
    :goto_2
    iget-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    .line 608
    :try_start_4
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 610
    :catch_1
    move-exception v1

    .line 612
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 595
    .end local v0           #callback:Landroid/os/Message;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_1
    const/16 v2, 0x65

    .line 596
    goto :goto_1

    .line 615
    .restart local v0       #callback:Landroid/os/Message;
    :cond_1
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mIccCardInfo:Landroid/telephony/IccCardInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 558
    monitor-enter p0

    .line 559
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$ReadCardRecord;->mHandler:Landroid/os/Handler;

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 579
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 581
    return-void

    .line 579
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
