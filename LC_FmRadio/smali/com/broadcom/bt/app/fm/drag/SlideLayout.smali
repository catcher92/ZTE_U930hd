.class public Lcom/broadcom/bt/app/fm/drag/SlideLayout;
.super Landroid/widget/LinearLayout;
.source "SlideLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;
    }
.end annotation


# static fields
.field private static final FLING_SPEED_FAST:I = 0x2

.field private static final FLING_SPEED_MEDIUM:I = 0x1

.field private static final FLING_SPEED_SLOW:I = 0x0

.field private static final MOVE_DIRECTION_NEXT:I = 0x1

.field private static final MOVE_DIRECTION_NONE:I = 0x0

.field private static final MOVE_DIRECTION_PREV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SL"


# instance fields
.field private final SLIDE_DES:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mSlideStatus:Z

.field private mX1:F

.field private mX2:F

.field private mY1:F

.field private mY2:F

.field private stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX1:F

    .line 51
    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX2:F

    .line 52
    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY1:F

    .line 53
    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY2:F

    .line 54
    const/16 v0, 0x1e

    iput v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->SLIDE_DES:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mSlideStatus:Z

    .line 194
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 195
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 197
    return-void
.end method

.method private calcSlideDirection(II)Z
    .locals 3
    .parameter "xdelta"
    .parameter "ydelta"

    .prologue
    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, direction:I
    const/16 v2, 0x1e

    if-le p1, v2, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 118
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    invoke-interface {v2}, Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;->onFlingPrevious()V

    .line 127
    :goto_1
    return v1

    .line 108
    :cond_0
    const/16 v2, -0x1e

    if-ge p1, v2, :cond_1

    .line 110
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_2
    if-ne v0, v1, :cond_3

    .line 122
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    invoke-interface {v2}, Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;->onFlingNext()V

    goto :goto_1

    .line 127
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 206
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 92
    .local v0, e1x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 93
    .local v2, e2x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 94
    .local v1, e1y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 95
    .local v3, e2y:F
    sub-float v6, v0, v2

    float-to-int v4, v6

    .line 96
    .local v4, xdelta:I
    sub-float v6, v1, v3

    float-to-int v5, v6

    .line 98
    .local v5, ydelta:I
    invoke-direct {p0, v4, v5}, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->calcSlideDirection(II)Z

    move-result v6

    return v6
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 133
    .local v0, action:I
    iget-boolean v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mSlideStatus:Z

    if-nez v4, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 157
    :goto_0
    :pswitch_0
    return v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, handler:Z
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX1:F

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY1:F

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX2:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY2:F

    .line 150
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX1:F

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mX2:F

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 151
    .local v2, xdelta:I
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY1:F

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mY2:F

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 152
    .local v3, ydelta:I
    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->calcSlideDirection(II)Z

    move-result v1

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-eqz v0, :cond_0

    .line 166
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-eqz v0, :cond_0

    .line 176
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    invoke-interface {v0}, Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;->onSingleTap()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mSlideStatus:Z

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPanelListener(Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;)V
    .locals 0
    .parameter "onStationListener"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->stationLayoutListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    .line 214
    return-void
.end method

.method public setSlideStatus(Z)V
    .locals 0
    .parameter "slideStatus"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->mSlideStatus:Z

    .line 211
    return-void
.end method
