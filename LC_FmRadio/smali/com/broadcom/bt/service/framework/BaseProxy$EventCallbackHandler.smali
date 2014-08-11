.class public Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
.super Ljava/lang/Thread;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field public mCreator:Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;

.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/broadcom/bt/service/framework/BaseProxy;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->this$0:Lcom/broadcom/bt/service/framework/BaseProxy;

    .line 252
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 253
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->setPriority(I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/framework/BaseProxy;Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;)V
    .locals 0
    .parameter
    .parameter "creator"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->this$0:Lcom/broadcom/bt/service/framework/BaseProxy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mCreator:Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;

    .line 250
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 265
    .local v0, l:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 269
    .end local v0           #l:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mCreator:Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    .line 258
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 259
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mCreator:Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$IHandlerCreator;->create()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method
