.class Lcom/android/phone/RilConnector$1;
.super Landroid/os/Handler;
.source "RilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RilConnector;


# direct methods
.method constructor <init>(Lcom/android/phone/RilConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/phone/RilConnector$1;->this$0:Lcom/android/phone/RilConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 21
    const-string v2, "RilConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v2, p0, Lcom/android/phone/RilConnector$1;->this$0:Lcom/android/phone/RilConnector;

    invoke-virtual {v2, p1}, Lcom/android/phone/RilConnector;->PreHandleWhenMsgCome(Landroid/os/Message;)V

    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 25
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/android/phone/RilConnector$1;->this$0:Lcom/android/phone/RilConnector;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/RilConnector;->OnException(Landroid/os/AsyncResult;I)V

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/phone/RilConnector$1;->this$0:Lcom/android/phone/RilConnector;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/phone/RilConnector;->GetRilUnit(I)Lcom/android/phone/RilUnit;

    move-result-object v1

    .line 31
    .local v1, unit:Lcom/android/phone/RilUnit;
    if-nez v1, :cond_1

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/phone/RilUnit;->OnResult(Landroid/os/Message;)V

    .line 34
    iget-object v2, p0, Lcom/android/phone/RilConnector$1;->this$0:Lcom/android/phone/RilConnector;

    invoke-virtual {v2, p1}, Lcom/android/phone/RilConnector;->FinalHandleWhenMsgCome(Landroid/os/Message;)V

    goto :goto_0
.end method
