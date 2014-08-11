.class Lcom/android/phone/CallNotifier$MyFlipMuteListener;
.super Lcom/android/phone/FlipEventListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFlipMuteListener"
.end annotation


# instance fields
.field mEnableTime:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    .line 2465
    invoke-direct {p0, p2}, Lcom/android/phone/FlipEventListener;-><init>(Landroid/content/Context;)V

    .line 2466
    return-void
.end method


# virtual methods
.method public onFilpEventChanged(I)V
    .locals 6
    .parameter "event"

    .prologue
    .line 2471
    if-nez p1, :cond_1

    .line 2472
    const-string v2, "CallNotifier"

    const-string v3, "change to ringing mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_0
    :goto_0
    return-void

    .line 2474
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2475
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->mEnableTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2476
    const-string v2, "CallNotifier"

    const-string v3, "firstEvent,ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2480
    :cond_2
    const-string v2, "CallNotifier"

    const-string v3, "change to mute mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "stopRing()... (onFilpEventChanged)"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2485
    iget-object v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0
.end method
