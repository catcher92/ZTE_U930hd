.class public Lleadcore/gesture/SliderHandler;
.super Ljava/lang/Object;
.source "SliderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleadcore/gesture/SliderHandler$H;,
        Lleadcore/gesture/SliderHandler$FireEvent;
    }
.end annotation


# static fields
.field private static final mRecommendItv:I = 0x190


# instance fields
.field private mDelPos:I

.field private mFev:Lleadcore/gesture/SliderHandler$FireEvent;

.field private mH:Lleadcore/gesture/SliderHandler$H;

.field private mInterval:J

.field private mLastClickTm:J

.field private mLastPos:F

.field private mLastTm:J

.field private mMoveLastTm:J

.field private mNextLimit:F


# direct methods
.method public constructor <init>(Lleadcore/gesture/SliderHandler$FireEvent;)V
    .locals 1
    .parameter "fev"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lleadcore/gesture/SliderHandler$H;

    invoke-direct {v0, p0}, Lleadcore/gesture/SliderHandler$H;-><init>(Lleadcore/gesture/SliderHandler;)V

    iput-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    .line 24
    iput-object p1, p0, Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lleadcore/gesture/SliderHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    return v0
.end method

.method static synthetic access$100(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$FireEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;

    return-object v0
.end method

.method static synthetic access$202(Lleadcore/gesture/SliderHandler;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-wide p1, p0, Lleadcore/gesture/SliderHandler;->mMoveLastTm:J

    return-wide p1
.end method

.method static synthetic access$300(Lleadcore/gesture/SliderHandler;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 10
    iget-wide v0, p0, Lleadcore/gesture/SliderHandler;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lleadcore/gesture/SliderHandler;)Lleadcore/gesture/SliderHandler$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    return-object v0
.end method


# virtual methods
.method public onSlider(IFJ)V
    .locals 9
    .parameter "action"
    .parameter "pos"
    .parameter "tm"

    .prologue
    const-wide/16 v2, 0x190

    const/high16 v4, 0x4000

    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v6, 0x0

    .line 86
    .local v6, ge:Lleadcore/gesture/GestureEvent;
    iget-object v8, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    monitor-enter v8

    .line 88
    if-nez p1, :cond_3

    .line 90
    :try_start_0
    iput p2, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    .line 91
    iput p2, p0, Lleadcore/gesture/SliderHandler;->mNextLimit:F

    .line 92
    iput-wide p3, p0, Lleadcore/gesture/SliderHandler;->mLastTm:J

    .line 142
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 144
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mFev:Lleadcore/gesture/SliderHandler$FireEvent;

    invoke-interface {v0, v6}, Lleadcore/gesture/SliderHandler$FireEvent;->onEvent(Lleadcore/gesture/GestureEvent;)V

    .line 146
    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_3
    if-ne v1, p1, :cond_6

    .line 96
    :try_start_1
    iget-wide v0, p0, Lleadcore/gesture/SliderHandler;->mLastTm:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 98
    iget-wide v0, p0, Lleadcore/gesture/SliderHandler;->mLastClickTm:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 102
    iput-wide p3, p0, Lleadcore/gesture/SliderHandler;->mLastClickTm:J

    .line 111
    :cond_4
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lleadcore/gesture/SliderHandler;->mInterval:J

    .line 112
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lleadcore/gesture/SliderHandler$H;->removeMessages(I)V

    goto :goto_1

    .line 106
    :cond_5
    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    add-float/2addr v3, p2

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v6

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lleadcore/gesture/SliderHandler;->mLastClickTm:J

    goto :goto_2

    .line 114
    :cond_6
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 116
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    .line 118
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_7

    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    const/16 v1, -0xa

    if-le v0, v1, :cond_7

    .line 120
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mNextLimit:F

    iput v0, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    .line 121
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    .line 122
    monitor-exit v8

    goto :goto_0

    .line 124
    :cond_7
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    if-lez v0, :cond_8

    iget v0, p0, Lleadcore/gesture/SliderHandler;->mNextLimit:F

    cmpg-float v0, v0, p2

    if-ltz v0, :cond_9

    :cond_8
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    if-gez v0, :cond_a

    iget v0, p0, Lleadcore/gesture/SliderHandler;->mNextLimit:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_a

    .line 127
    :cond_9
    iput p2, p0, Lleadcore/gesture/SliderHandler;->mNextLimit:F

    .line 130
    :cond_a
    iget-wide v0, p0, Lleadcore/gesture/SliderHandler;->mMoveLastTm:J

    sub-long v0, p3, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    monitor-exit v8

    goto/16 :goto_0

    .line 131
    :cond_b
    iput-wide p3, p0, Lleadcore/gesture/SliderHandler;->mMoveLastTm:J

    .line 133
    iget v0, p0, Lleadcore/gesture/SliderHandler;->mDelPos:I

    if-lez v0, :cond_c

    const/16 v0, 0x9

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lleadcore/gesture/SliderHandler;->mLastPos:F

    add-float/2addr v3, p2

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v6

    .line 136
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lleadcore/gesture/SliderHandler$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 137
    .local v7, msg:Landroid/os/Message;
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lleadcore/gesture/SliderHandler;->mInterval:J

    .line 138
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lleadcore/gesture/SliderHandler$H;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lleadcore/gesture/SliderHandler;->mH:Lleadcore/gesture/SliderHandler$H;

    iget-wide v1, p0, Lleadcore/gesture/SliderHandler;->mInterval:J

    invoke-virtual {v0, v7, v1, v2}, Lleadcore/gesture/SliderHandler$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 133
    .end local v7           #msg:Landroid/os/Message;
    :cond_c
    const/16 v0, 0x8

    goto :goto_3
.end method
