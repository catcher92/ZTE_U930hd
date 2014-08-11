.class Lcom/android/internal/telephony/cat/TMResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCmdQual:I

.field private mTMID:B

.field private mTMValue:J


# direct methods
.method public constructor <init>(IBJ)V
    .locals 0
    .parameter "cmdQual"
    .parameter "tmID"
    .parameter "tmValue"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 292
    iput p1, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mCmdQual:I

    .line 293
    iput-byte p2, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMID:B

    .line 294
    iput-wide p3, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMValue:J

    .line 295
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .parameter "buf"

    .prologue
    const-wide/16 v8, 0x3c

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMResponseData:format mCmdQual = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mCmdQual:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTMValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMValue:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TIMER_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v3, v4, 0x80

    .line 303
    .local v3, tag:I
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    iget-byte v4, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMID:B

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    iget v4, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mCmdQual:I

    if-eqz v4, :cond_0

    .line 308
    iget-wide v4, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMValue:J

    const-wide/16 v6, 0xe10

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 309
    .local v0, hour:I
    iget-wide v4, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMValue:J

    div-long/2addr v4, v8

    rem-long/2addr v4, v8

    long-to-int v1, v4

    .line 310
    .local v1, mini:I
    iget-wide v4, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMValue:J

    rem-long/2addr v4, v8

    long-to-int v2, v4

    .line 311
    .local v2, sec:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hour = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mini = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sec = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v3, v4, 0x80

    .line 313
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    div-int/lit8 v4, v0, 0xa

    rem-int/lit8 v5, v0, 0xa

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    div-int/lit8 v4, v1, 0xa

    rem-int/lit8 v5, v1, 0xa

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    div-int/lit8 v4, v2, 0xa

    rem-int/lit8 v5, v2, 0xa

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0
.end method

.method public getTMID()B
    .locals 1

    .prologue
    .line 322
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TMResponseData;->mTMID:B

    return v0
.end method
