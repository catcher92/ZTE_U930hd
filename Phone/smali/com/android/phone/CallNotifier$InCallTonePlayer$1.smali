.class Lcom/android/phone/CallNotifier$InCallTonePlayer$1;
.super Landroid/os/Handler;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier$InCallTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier$InCallTonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x65

    .line 1599
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1615
    :goto_0
    return-void

    .line 1601
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLAY_CALLWAITING_TONE_UPDATE  mState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I
    invoke-static {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->access$400(Lcom/android/phone/CallNotifier$InCallTonePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->access$400(Lcom/android/phone/CallNotifier$InCallTonePlayer;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->access$402(Lcom/android/phone/CallNotifier$InCallTonePlayer;I)I

    .line 1605
    const/16 v0, 0x68

    .line 1606
    .local v0, ToneId:C
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->playCallwaitingTone(C)V

    .line 1607
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$InCallTonePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->access$700(Lcom/android/phone/CallNotifier$InCallTonePlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1611
    .end local v0           #ToneId:C
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$InCallTonePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->access$700(Lcom/android/phone/CallNotifier$InCallTonePlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
