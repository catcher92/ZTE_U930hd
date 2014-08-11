.class Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
.super Ljava/lang/Thread;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadGetProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    .line 490
    const-string v0, "ThreadGetProxy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 491
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 494
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 497
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 498
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 508
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Error;
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
