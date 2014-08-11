.class public Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsetPlugUnplugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2950
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2953
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2954
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2956
    .local v0, state:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z
    invoke-static {v2, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2957
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetReceive powerupPending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shutdownPending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2959
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v2

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2000(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V

    .line 2963
    .end local v0           #state:I
    :cond_1
    return-void
.end method
