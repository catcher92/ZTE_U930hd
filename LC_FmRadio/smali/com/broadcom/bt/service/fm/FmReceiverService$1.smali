.class Lcom/broadcom/bt/service/fm/FmReceiverService$1;
.super Landroid/os/Handler;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 318
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 323
    :pswitch_0
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BTAPP TIMEOUT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v1, 0xa

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Sreach_Fre_Time_Out"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #getter for: Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 331
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    const/4 v2, 0x1

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_1
    const/4 v1, 0x0

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 340
    :goto_2
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    goto :goto_0

    .line 339
    :cond_1
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_2

    .line 334
    :catch_0
    move-exception v1

    goto :goto_1

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
