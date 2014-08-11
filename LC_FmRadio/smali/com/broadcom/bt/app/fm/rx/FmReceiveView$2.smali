.class Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;
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
    .line 381
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingNext()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmFavoriteStationsFlingNext()V

    .line 393
    return-void
.end method

.method public onFlingPrevious()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmFavoriteStationsFlingPrevious()V

    .line 389
    return-void
.end method

.method public onLongPress()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onSingleTap()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
