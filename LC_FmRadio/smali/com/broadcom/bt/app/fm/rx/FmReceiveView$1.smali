.class Lcom/broadcom/bt/app/fm/rx/FmReceiveView$1;
.super Ljava/lang/Object;
.source "FmReceiveView.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;


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
    .line 359
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingNext()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng zteFmSetListener() onFlingNext "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public onFlingPrevious()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng zteFmSetListener() onFlingPrevious "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public onLongPress()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onSingleTap()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
