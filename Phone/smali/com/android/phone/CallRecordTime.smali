.class public Lcom/android/phone/CallRecordTime;
.super Landroid/os/Handler;
.source "CallRecordTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallRecordTime$OnTickListener;
    }
.end annotation


# static fields
.field private static CallRecordDuration:J

.field private static mRecordBeginTime:J


# instance fields
.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/CallRecordTime$OnTickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    .line 58
    new-instance v0, Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallRecordTime;)V

    iput-object v0, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallRecordTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    return p1
.end method

.method private updateElapsedTime()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    if-eqz v0, :cond_0

    .line 101
    sget-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 102
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    sget-wide v1, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallRecordTime$OnTickListener;->onTickForCallRecordTimeElapsed(J)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRecordTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    .line 97
    return-void
.end method

.method periodicUpdateTimer()V
    .locals 8

    .prologue
    .line 122
    iget-boolean v4, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    if-nez v4, :cond_1

    .line 123
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 126
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long v0, v4, v6

    .line 128
    .local v0, nextReport:J
    :goto_0
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 129
    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/phone/CallRecordTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 134
    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 136
    invoke-direct {p0}, Lcom/android/phone/CallRecordTime;->updateElapsedTime()V

    .line 140
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_1
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 64
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/phone/CallRecordTime;->mRecordBeginTime:J

    .line 68
    return-void
.end method

.method stepSet()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 73
    iput-wide v6, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, now:J
    sget-wide v2, Lcom/android/phone/CallRecordTime;->mRecordBeginTime:J

    sub-long v2, v0, v2

    div-long/2addr v2, v6

    sput-wide v2, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 79
    return-void
.end method
