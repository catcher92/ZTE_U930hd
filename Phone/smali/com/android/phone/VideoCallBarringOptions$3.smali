.class Lcom/android/phone/VideoCallBarringOptions$3;
.super Landroid/os/Handler;
.source "VideoCallBarringOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallBarringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallBarringOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

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

    .line 490
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 491
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 493
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-virtual {v2, v3}, Lcom/android/phone/VideoCallBarringOptions;->dismissDialog(I)V

    .line 494
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    :goto_1
    #calls: Lcom/android/phone/VideoCallBarringOptions;->iccPinChanged(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/VideoCallBarringOptions;->access$1100(Lcom/android/phone/VideoCallBarringOptions;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 497
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #calls: Lcom/android/phone/VideoCallBarringOptions;->handleGetFacilityLockResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/VideoCallBarringOptions;->access$1200(Lcom/android/phone/VideoCallBarringOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 501
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-virtual {v1, v3}, Lcom/android/phone/VideoCallBarringOptions;->dismissDialog(I)V

    .line 502
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #calls: Lcom/android/phone/VideoCallBarringOptions;->handleSetFacilityLockResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/VideoCallBarringOptions;->access$1300(Lcom/android/phone/VideoCallBarringOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 505
    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions$3;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-virtual {v2, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto :goto_0

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_3
    .end sparse-switch
.end method
