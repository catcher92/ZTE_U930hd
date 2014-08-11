.class Lcom/android/internal/telephony/cat/PollIntervalParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mTimeInterval:B

.field mTimeUnit:B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;BB)V
    .locals 0
    .parameter "cmdDet"
    .parameter "timeUnit"
    .parameter "timeInterval"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 176
    iput-byte p2, p0, Lcom/android/internal/telephony/cat/PollIntervalParams;->mTimeUnit:B

    .line 177
    iput-byte p3, p0, Lcom/android/internal/telephony/cat/PollIntervalParams;->mTimeInterval:B

    .line 178
    return-void
.end method
