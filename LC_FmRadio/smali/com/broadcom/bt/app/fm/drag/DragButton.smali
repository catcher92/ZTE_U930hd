.class public Lcom/broadcom/bt/app/fm/drag/DragButton;
.super Landroid/widget/Button;
.source "DragButton.java"

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
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public setDragger(Lcom/broadcom/bt/app/fm/drag/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragButton;->mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragController;

    .line 43
    return-void
.end method

.method public startDrag()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragButton;->mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, p0, v1, v2}, Lcom/broadcom/bt/app/fm/drag/DragController;->startDrag(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V

    .line 46
    return-void
.end method
