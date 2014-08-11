.class Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/drag/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/drag/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 559
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    #getter for: Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->access$000(Lcom/broadcom/bt/app/fm/drag/DragLayer;)Lcom/broadcom/bt/app/fm/drag/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    #getter for: Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->access$000(Lcom/broadcom/bt/app/fm/drag/DragLayer;)Lcom/broadcom/bt/app/fm/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/app/fm/drag/DragScroller;->scrollLeft()V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->access$102(Lcom/broadcom/bt/app/fm/drag/DragLayer;I)I

    .line 570
    :cond_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->this$0:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    #getter for: Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->access$000(Lcom/broadcom/bt/app/fm/drag/DragLayer;)Lcom/broadcom/bt/app/fm/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/app/fm/drag/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 573
    iput p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->mDirection:I

    .line 574
    return-void
.end method
