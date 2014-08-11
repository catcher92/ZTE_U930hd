.class Lcom/broadcom/bt/app/fm/rx/FmRadio$1;
.super Landroid/content/BroadcastReceiver;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 374
    if-nez p2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "FmRxRadio"

    const-string v2, "get AirplaneModeOn intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 382
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iput-boolean v3, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 383
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    goto :goto_0

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0
.end method
