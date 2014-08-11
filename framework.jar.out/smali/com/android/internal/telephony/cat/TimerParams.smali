.class Lcom/android/internal/telephony/cat/TimerParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mTimerId:B

.field mTimerValue:J


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;BJ)V
    .locals 2
    .parameter "cmdDet"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 201
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TimerParams;->mTimerId:B

    .line 202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/cat/TimerParams;->mTimerValue:J

    .line 207
    iput-byte p2, p0, Lcom/android/internal/telephony/cat/TimerParams;->mTimerId:B

    .line 208
    iput-wide p3, p0, Lcom/android/internal/telephony/cat/TimerParams;->mTimerValue:J

    .line 209
    return-void
.end method
