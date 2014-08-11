.class Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;
.super Ljava/lang/Object;
.source "FmReceiveView.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideHandler(I)V
    .locals 5
    .parameter "dirction"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 404
    const-string v0, "FmReceiveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wangdapeng zteFmSetListener() dirction =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-ne p1, v3, :cond_1

    .line 407
    const-string v0, "FmReceiveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wangdapeng zteFmSetListener() 111dirction =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->access$000(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1, v4}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->handleButtonEvent(II)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    if-ne p1, v4, :cond_0

    .line 413
    const-string v0, "FmReceiveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wangdapeng zteFmSetListener() 2222dirction =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->access$000(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, v3}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->handleButtonEvent(II)V

    goto :goto_0
.end method
