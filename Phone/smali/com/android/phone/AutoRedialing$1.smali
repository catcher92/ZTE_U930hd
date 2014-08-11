.class Lcom/android/phone/AutoRedialing$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRedialing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AutoRedialing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialing;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialing;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 31
    const-string v2, "AutoRedialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v2, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/AutoRedialing;->redialingNumber:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    #getter for: Lcom/android/phone/AutoRedialing;->AUTO_REDIALING:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/AutoRedialing;->access$000(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "isBusy"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/phone/AutoRedialing;->autoTimes:I

    iget-object v3, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    iget v3, v3, Lcom/android/phone/AutoRedialing;->MAX_REDIALING_TIMES:I

    if-ge v2, v3, :cond_2

    .line 36
    sget v2, Lcom/android/phone/AutoRedialing;->autoTimes:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/AutoRedialing;->autoTimes:I

    .line 37
    iget-object v2, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    #calls: Lcom/android/phone/AutoRedialing;->handleRedialing(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/AutoRedialing;->access$100(Lcom/android/phone/AutoRedialing;Landroid/content/Intent;)V

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    #getter for: Lcom/android/phone/AutoRedialing;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/AutoRedialing;->access$200(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    sget v3, Lcom/android/phone/AutoRedialing;->autoTimes:I

    invoke-virtual {v2, v3}, Lcom/android/phone/AutoRedialing;->getAutoTime(I)J

    move-result-wide v0

    .line 46
    .local v0, autoTime:J
    iget-object v2, p0, Lcom/android/phone/AutoRedialing$1;->this$0:Lcom/android/phone/AutoRedialing;

    #calls: Lcom/android/phone/AutoRedialing;->timeToDismissDialog(J)V
    invoke-static {v2, v0, v1}, Lcom/android/phone/AutoRedialing;->access$300(Lcom/android/phone/AutoRedialing;J)V

    .line 48
    .end local v0           #autoTime:J
    :cond_1
    return-void

    .line 39
    :cond_2
    sput v5, Lcom/android/phone/AutoRedialing;->autoTimes:I

    goto :goto_0
.end method
