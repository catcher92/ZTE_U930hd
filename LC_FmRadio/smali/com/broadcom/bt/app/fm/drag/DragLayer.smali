.class public Lcom/broadcom/bt/app/fm/drag/DragLayer;
.super Landroid/widget/RelativeLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DRAG_SCALE:F = 24.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x14

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private isSaveDrager:Z

.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;

.field private mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDroped:Z

.field private mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    .line 54
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIsDroped:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDropCoordinates:[I

    .line 105
    iput v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    .line 107
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;-><init>(Lcom/broadcom/bt/app/fm/drag/DragLayer;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 128
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/drag/DragLayer;)Lcom/broadcom/bt/app/fm/drag/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/broadcom/bt/app/fm/drag/DragLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    return p1
.end method

.method private drop(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->invalidate()V

    .line 459
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DragLayer.drop().mDragging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    if-nez v1, :cond_0

    move v1, v8

    .line 483
    :goto_0
    return v1

    .line 465
    :cond_0
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDropCoordinates:[I

    .line 466
    .local v7, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->findDropTarget(II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-result-object v0

    .line 468
    .local v0, dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    if-eqz v0, :cond_2

    .line 469
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDragExit(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->acceptDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    .line 475
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/broadcom/bt/app/fm/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 476
    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIsDroped:Z

    move v1, v9

    .line 477
    goto :goto_0

    .line 479
    .restart local v0       #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    invoke-interface {v1, v0, v8}, Lcom/broadcom/bt/app/fm/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 480
    goto :goto_0

    .restart local v0       #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    :cond_2
    move v1, v8

    .line 483
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    .line 274
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    .line 275
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->isSaveDrager:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIsDroped:Z

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    invoke-interface {v0}, Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;->onDragEnd()V

    .line 288
    :cond_2
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIsDroped:Z

    .line 289
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;
    .locals 9
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 491
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 492
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 493
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    add-int v5, p2, v8

    .line 494
    .local v5, scrolledX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    add-int v6, p3, v8

    .line 495
    .local v6, scrolledY:I
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 497
    .local v3, ignoredDropTarget:Landroid/view/View;
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 498
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eq v0, v3, :cond_2

    .line 500
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 501
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 502
    const/4 v7, 0x0

    .line 503
    .local v7, target:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int p2, v5, v8

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int p3, v6, v8

    move-object v8, v0

    .line 506
    check-cast v8, Landroid/view/ViewGroup;

    invoke-direct {p0, v8, p2, p3, p4}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-result-object v7

    .line 508
    :cond_0
    if-nez v7, :cond_1

    .line 509
    instance-of v8, v0, Lcom/broadcom/bt/app/fm/drag/DropTarget;

    if-eqz v8, :cond_2

    .line 510
    const/4 v8, 0x0

    aput p2, p4, v8

    .line 511
    const/4 v8, 0x1

    aput p3, p4, v8

    .line 512
    check-cast v0, Lcom/broadcom/bt/app/fm/drag/DropTarget;

    .line 521
    .end local v0           #child:Landroid/view/View;
    .end local v7           #target:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    :goto_1
    return-object v0

    .restart local v0       #child:Landroid/view/View;
    .restart local v7       #target:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    :cond_1
    move-object v0, v7

    .line 515
    goto :goto_1

    .line 497
    .end local v7           #target:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 521
    .end local v0           #child:Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public closeDrag()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "FMRadio"

    const-string v1, "DragLayer.closeDrag()."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->endDrag()V

    .line 269
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 223
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 226
    iget v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationStartTime:J

    .line 228
    iput v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    .line 231
    :cond_0
    iget v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_3

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 234
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_1

    .line 235
    const/4 v3, 0x3

    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    .line 237
    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 238
    iget v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 240
    .local v2, value:F
    iget v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_0

    .line 259
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_2
    :goto_0
    return-void

    .line 242
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 243
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 244
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 249
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 254
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 487
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 295
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 296
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 298
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    return v3

    .line 304
    :pswitch_1
    iput v1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    .line 305
    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    .line 306
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    goto :goto_0

    .line 311
    :pswitch_2
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mShouldDrop:Z

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->endDrag()V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    if-nez v4, :cond_0

    .line 324
    const/4 v4, 0x0

    .line 452
    :goto_0
    return v4

    .line 327
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 328
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    .line 329
    .local v31, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    .line 331
    .local v32, y:F
    packed-switch v11, :pswitch_data_0

    .line 452
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 335
    :pswitch_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    .line 336
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    .line 338
    const/high16 v4, 0x41a0

    cmpg-float v4, v31, v4

    if-ltz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpl-float v4, v31, v4

    if-lez v4, :cond_6

    .line 339
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const-wide/16 v5, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    :goto_2
    :pswitch_1
    new-instance v18, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 348
    .local v18, mScroller:Landroid/widget/Scroller;
    const/16 v23, 0x0

    .line 349
    .local v23, scrX:I
    const/16 v24, 0x0

    .line 350
    .local v24, scrY:I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getCurrX()I

    move-result v23

    .line 352
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getCurrY()I

    move-result v24

    .line 354
    :cond_3
    move/from16 v25, v23

    .line 355
    .local v25, scrollX:I
    move/from16 v26, v24

    .line 357
    .local v26, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    move/from16 v28, v0

    .line 358
    .local v28, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    move/from16 v29, v0

    .line 360
    .local v29, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetX:I

    move/from16 v19, v0

    .line 361
    .local v19, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetY:I

    move/from16 v20, v0

    .line 363
    .local v20, offsetY:I
    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    add-float/2addr v4, v5

    sub-float v4, v4, v28

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    .line 364
    .local v17, left:I
    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    add-float/2addr v4, v5

    sub-float v4, v4, v29

    move/from16 v0, v20

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v27, v0

    .line 366
    .local v27, top:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 367
    .local v13, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    .line 368
    .local v30, width:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 370
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 371
    .local v21, rect:Landroid/graphics/Rect;
    add-int/lit8 v4, v17, -0x1

    add-int/lit8 v5, v27, -0x1

    add-int v6, v17, v30

    add-int/lit8 v6, v6, 0x1

    add-int v7, v27, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    .line 374
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    .line 376
    move/from16 v0, v25

    int-to-float v4, v0

    add-float v4, v4, v31

    sub-float v4, v4, v28

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    .line 377
    move/from16 v0, v26

    int-to-float v4, v0

    add-float v4, v4, v32

    sub-float v4, v4, v29

    move/from16 v0, v20

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v27, v0

    .line 379
    add-int/lit8 v4, v17, -0x1

    add-int/lit8 v5, v27, -0x1

    add-int v6, v17, v30

    add-int/lit8 v6, v6, 0x1

    add-int v7, v27, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDropCoordinates:[I

    .line 383
    .local v12, coordinates:[I
    move/from16 v0, v31

    float-to-int v4, v0

    move/from16 v0, v32

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->findDropTarget(II[I)Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-result-object v3

    .line 384
    .local v3, dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    if-eqz v3, :cond_9

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    if-ne v4, v3, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDragOver(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    .line 402
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    .line 404
    const/4 v15, 0x0

    .line 405
    .local v15, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    if-eqz v4, :cond_5

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    .line 407
    .local v22, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v16

    .line 408
    .local v16, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mEnteredRegion:Z

    if-nez v4, :cond_a

    if-eqz v16, :cond_a

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 410
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mEnteredRegion:Z

    .line 411
    const/4 v15, 0x1

    .line 418
    .end local v16           #inRegion:Z
    .end local v22           #region:Landroid/graphics/RectF;
    :cond_5
    :goto_4
    if-nez v15, :cond_b

    const/high16 v4, 0x41a0

    cmpg-float v4, v31, v4

    if-gez v4, :cond_b

    .line 419
    move-object/from16 v0, p0

    iget v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    if-nez v4, :cond_1

    .line 420
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const-wide/16 v5, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 342
    .end local v3           #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    .end local v12           #coordinates:[I
    .end local v13           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v14           #height:I
    .end local v15           #inDragRegion:Z
    .end local v17           #left:I
    .end local v18           #mScroller:Landroid/widget/Scroller;
    .end local v19           #offsetX:I
    .end local v20           #offsetY:I
    .end local v21           #rect:Landroid/graphics/Rect;
    .end local v23           #scrX:I
    .end local v24           #scrY:I
    .end local v25           #scrollX:I
    .end local v26           #scrollY:I
    .end local v27           #top:I
    .end local v28           #touchX:F
    .end local v29           #touchY:F
    .end local v30           #width:I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    goto/16 :goto_2

    .line 389
    .restart local v3       #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    .restart local v12       #coordinates:[I
    .restart local v13       #dragBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #height:I
    .restart local v17       #left:I
    .restart local v18       #mScroller:Landroid/widget/Scroller;
    .restart local v19       #offsetX:I
    .restart local v20       #offsetY:I
    .restart local v21       #rect:Landroid/graphics/Rect;
    .restart local v23       #scrX:I
    .restart local v24       #scrY:I
    .restart local v25       #scrollX:I
    .restart local v26       #scrollY:I
    .restart local v27       #top:I
    .restart local v28       #touchX:F
    .restart local v29       #touchY:F
    .restart local v30       #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    if-eqz v4, :cond_8

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDragExit(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    .line 393
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDragEnter(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_3

    .line 397
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    if-eqz v4, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastDropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/broadcom/bt/app/fm/drag/DropTarget;->onDragExit(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_3

    .line 412
    .restart local v15       #inDragRegion:Z
    .restart local v16       #inRegion:Z
    .restart local v22       #region:Landroid/graphics/RectF;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mEnteredRegion:Z

    if-eqz v4, :cond_5

    if-nez v16, :cond_5

    .line 413
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 414
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_4

    .line 424
    .end local v16           #inRegion:Z
    .end local v22           #region:Landroid/graphics/RectF;
    :cond_b
    if-nez v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpl-float v4, v31, v4

    if-lez v4, :cond_c

    .line 425
    move-object/from16 v0, p0

    iget v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    if-nez v4, :cond_1

    .line 426
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const-wide/16 v5, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 431
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 432
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollState:I

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 440
    .end local v3           #dropTarget:Lcom/broadcom/bt/app/fm/drag/DropTarget;
    .end local v12           #coordinates:[I
    .end local v13           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v14           #height:I
    .end local v15           #inDragRegion:Z
    .end local v17           #left:I
    .end local v18           #mScroller:Landroid/widget/Scroller;
    .end local v19           #offsetX:I
    .end local v20           #offsetY:I
    .end local v21           #rect:Landroid/graphics/Rect;
    .end local v23           #scrX:I
    .end local v24           #scrY:I
    .end local v25           #scrollX:I
    .end local v26           #scrollY:I
    .end local v27           #top:I
    .end local v28           #touchX:F
    .end local v29           #touchY:F
    .end local v30           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mScrollRunnable:Lcom/broadcom/bt/app/fm/drag/DragLayer$ScrollRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 441
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mShouldDrop:Z

    if-eqz v4, :cond_d

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->drop(FF)Z

    .line 443
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mShouldDrop:Z

    .line 445
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 449
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    .line 534
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 553
    return-void
.end method

.method public setDragListener(Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    .line 530
    return-void
.end method

.method public setDragScoller(Lcom/broadcom/bt/app/fm/drag/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragScroller:Lcom/broadcom/bt/app/fm/drag/DragScroller;

    .line 526
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 544
    return-void
.end method

.method public setSaveDrager(Z)V
    .locals 0
    .parameter "isSaveDrager"

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->isSaveDrager:Z

    .line 578
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V
    .locals 16
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    if-eqz v5, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mListener:Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 162
    .local v12, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v5, v6, v10, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 165
    move-object/from16 v0, p0

    iget v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionX:F

    iget v6, v12, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetX:F

    .line 166
    move-object/from16 v0, p0

    iget v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mLastMotionY:F

    iget v6, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mTouchOffsetY:F

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 169
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v14

    .line 172
    .local v14, willNotCache:Z
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 176
    .local v4, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 177
    .local v7, width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 179
    .local v8, height:I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    .local v9, scale:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v13, v5

    .line 181
    .local v13, scaleFactor:F
    const/high16 v13, 0x3f80

    .line 182
    invoke-virtual {v9, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 184
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationTo:F

    .line 185
    const/high16 v5, 0x3f80

    div-float/2addr v5, v13

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationFrom:F

    .line 186
    const/16 v5, 0x6e

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationDuration:I

    .line 187
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationState:I

    .line 188
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mAnimationType:I

    .line 190
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 192
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 195
    .local v11, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetX:I

    .line 196
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mBitmapOffsetY:I

    .line 198
    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->isSaveDrager:Z

    if-nez v5, :cond_2

    .line 199
    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 203
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragging:Z

    .line 204
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mShouldDrop:Z

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mOriginator:Landroid/view/View;

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragSource:Lcom/broadcom/bt/app/fm/drag/DragSource;

    .line 207
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 211
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/broadcom/bt/app/fm/drag/DragLayer;->mEnteredRegion:Z

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->invalidate()V

    .line 214
    return-void
.end method
