.class Lcom/broadcom/bt/app/fm/FMTestService$3;
.super Landroid/content/BroadcastReceiver;
.source "FMTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/FMTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/FMTestService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService$3;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$3;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver HEADSET status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$3;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$800(Lcom/broadcom/bt/app/fm/FMTestService;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "routing=2"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$3;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$800(Lcom/broadcom/bt/app/fm/FMTestService;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "routing=12"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
