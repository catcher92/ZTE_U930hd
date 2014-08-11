.class public Lcom/broadcom/bt/app/fm/drag/DragContainer;
.super Landroid/widget/LinearLayout;
.source "DragContainer.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/DragSource;


# instance fields
.field private mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 23
    return-void
.end method

.method public setDragger(Lcom/broadcom/bt/app/fm/drag/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragContainer;->mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragController;

    .line 32
    return-void
.end method

.method public startDrag()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragContainer;->mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, p0, v1, v2}, Lcom/broadcom/bt/app/fm/drag/DragController;->startDrag(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V

    .line 26
    return-void
.end method
