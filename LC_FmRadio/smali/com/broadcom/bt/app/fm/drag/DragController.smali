.class public interface abstract Lcom/broadcom/bt/app/fm/drag/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I


# virtual methods
.method public abstract removeDragListener(Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;)V
.end method

.method public abstract setDragListener(Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;)V
.end method

.method public abstract startDrag(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V
.end method
