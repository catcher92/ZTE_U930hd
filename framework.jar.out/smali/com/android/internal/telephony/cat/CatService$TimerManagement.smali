.class Lcom/android/internal/telephony/cat/CatService$TimerManagement;
.super Landroid/os/CountDownTimer;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerManagement"
.end annotation


# instance fields
.field private mMillisFromStart:J

.field private final mMillisInFutureS:J

.field private mTimerID:B

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;BJJ)V
    .locals 2
    .parameter
    .parameter "timerID"
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->this$0:Lcom/android/internal/telephony/cat/CatService;

    .line 1373
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1374
    iput-byte p2, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mTimerID:B

    .line 1375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisFromStart:J

    .line 1376
    iput-wide p3, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisInFutureS:J

    .line 1377
    return-void
.end method


# virtual methods
.method public getElapsedSec()J
    .locals 4

    .prologue
    .line 1399
    iget-wide v0, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisFromStart:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimerID()B
    .locals 1

    .prologue
    .line 1393
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mTimerID:B

    return v0
.end method

.method public onFinish()V
    .locals 7

    .prologue
    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinish: tmID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mTimerID:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    new-instance v0, Lcom/android/internal/telephony/cat/TMResponseData;

    const/16 v1, 0xff

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mTimerID:B

    iget-wide v3, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisFromStart:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/TMResponseData;-><init>(IBJ)V

    .line 1389
    .local v0, resp:Lcom/android/internal/telephony/cat/TMResponseData;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->sendTimerExpire(Lcom/android/internal/telephony/cat/TMResponseData;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/TMResponseData;)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->cancel()V

    .line 1391
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 1379
    iget-wide v0, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisInFutureS:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/cat/CatService$TimerManagement;->mMillisFromStart:J

    .line 1380
    return-void
.end method
