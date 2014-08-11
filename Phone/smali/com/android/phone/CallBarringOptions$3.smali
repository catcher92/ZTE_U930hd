.class Lcom/android/phone/CallBarringOptions$3;
.super Landroid/os/Handler;
.source "CallBarringOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CallBarringOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 501
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 502
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 504
    :sswitch_0
    const-string v2, "####  CHANGE_PASSWORD_COMPLETE ..."

    #calls: Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallBarringOptions;->access$1100(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    #calls: Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringOptions;->access$1200(Lcom/android/phone/CallBarringOptions;I)V

    .line 506
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    :goto_1
    #calls: Lcom/android/phone/CallBarringOptions;->iccPinChanged(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/CallBarringOptions;->access$1300(Lcom/android/phone/CallBarringOptions;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 509
    :sswitch_1
    const-string v1, "####  MESSAGE_GET_FACILITY_LOCK ..."

    #calls: Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->access$1100(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    #calls: Lcom/android/phone/CallBarringOptions;->handleGetFacilityLockResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CallBarringOptions;->access$1400(Lcom/android/phone/CallBarringOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 514
    :sswitch_2
    const-string v1, "####  MESSAGE_SET_FACILITY_LOCK ..."

    #calls: Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->access$1100(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    #calls: Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V
    invoke-static {v1, v3}, Lcom/android/phone/CallBarringOptions;->access$1200(Lcom/android/phone/CallBarringOptions;I)V

    .line 516
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    #calls: Lcom/android/phone/CallBarringOptions;->handleSetFacilityLockResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CallBarringOptions;->access$1500(Lcom/android/phone/CallBarringOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 519
    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions$3;->this$0:Lcom/android/phone/CallBarringOptions;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto :goto_0

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_3
    .end sparse-switch
.end method
