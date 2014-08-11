.class Lcom/android/internal/telephony/VideoTelephonyService$2;
.super Landroid/os/Handler;
.source "VideoTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VideoTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/VideoTelephonyService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/VideoTelephonyService;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 232
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "PHONE STATE CHANGED"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$100(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "RINGING... (new)"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onNewRingingConnection(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$200(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "DISCONNECT"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onDisconnected(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$300(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "VT_REMOTE_USER_INPUT"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteUserInput(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$400(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "VT_REMOTE_USER_CMD"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteUserCMD(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$500(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 255
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "VT_REMOTE_REQ_DATA"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteReqData(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$600(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 259
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v2, "VT_REMOTE_CODEC_INFO"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->onRemoteCodecInfo(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$700(Lcom/android/internal/telephony/VideoTelephonyService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v4, "VT_SEND_USER_INPUT_DONE"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 265
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v3, v3, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    :goto_1
    #setter for: Lcom/android/internal/telephony/VideoTelephonyService;->success:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$802(Lcom/android/internal/telephony/VideoTelephonyService;Z)Z

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VT_SEND_USER_INPUT_DONE ar.exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, v1, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    move v1, v2

    .line 266
    goto :goto_1

    .line 272
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string v4, "VT_SEND_USER_CMD_DONE"

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 274
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v3, v3, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    :goto_2
    #setter for: Lcom/android/internal/telephony/VideoTelephonyService;->success:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$802(Lcom/android/internal/telephony/VideoTelephonyService;Z)Z

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VT_SEND_USER_CMD_DONE ar.exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/VideoTelephonyService$2;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    iget-object v1, v1, Lcom/android/internal/telephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    move v1, v2

    .line 275
    goto :goto_2

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
