.class Lcom/broadcom/bt/app/fm/rx/FmRadio$13;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 3338
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3340
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->hasSleepTimerExpired()Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    .line 3341
    .local v1, sleepTimerExpired:Z
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSleepProcessing sleepTimerExpired== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSleepProcessing Thread.currentThread().isInterrupted()== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3345
    const-string v2, "FmRxRadio"

    const-string v3, "doSleepProcessing  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3354
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3355
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->hasSleepTimerExpired()Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    .line 3356
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSleepProcessing sleepTimerExpired== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3358
    :catch_0
    move-exception v0

    .line 3359
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 3362
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 3367
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3370
    :cond_1
    return-void
.end method
