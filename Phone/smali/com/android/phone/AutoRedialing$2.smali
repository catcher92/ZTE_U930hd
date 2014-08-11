.class Lcom/android/phone/AutoRedialing$2;
.super Ljava/lang/Object;
.source "AutoRedialing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialing;->timeToDismissDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialing;

.field final synthetic val$autoTime:J


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialing;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    iput-wide p2, p0, Lcom/android/phone/AutoRedialing$2;->val$autoTime:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/phone/AutoRedialing;->i:I

    :goto_0
    iget-object v0, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    iget v0, v0, Lcom/android/phone/AutoRedialing;->i:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 124
    :try_start_0
    iget-wide v0, p0, Lcom/android/phone/AutoRedialing$2;->val$autoTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    sget-boolean v0, Lcom/android/phone/RedialingWaiting;->isNeedRedialing:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    sget-object v1, Lcom/android/phone/InCallScreen;->req_redialing:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/phone/AutoRedialing;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    #getter for: Lcom/android/phone/AutoRedialing;->CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/AutoRedialing;->access$400(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/AutoRedialing;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    const-string v0, "timeToDismissDialog"

    const-string v1, "Dialog dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/phone/AutoRedialing$2;->this$0:Lcom/android/phone/AutoRedialing;

    iget v1, v0, Lcom/android/phone/AutoRedialing;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/AutoRedialing;->i:I

    goto :goto_0

    .line 132
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_1
.end method
