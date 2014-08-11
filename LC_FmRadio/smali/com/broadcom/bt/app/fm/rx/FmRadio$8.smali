.class Lcom/broadcom/bt/app/fm/rx/FmRadio$8;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
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
    .line 3003
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 3005
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange >>>: focusChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 3007
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3008
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 3010
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3011
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-boolean v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    if-nez v0, :cond_2

    .line 3012
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 3013
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    .line 3017
    :cond_2
    return-void
.end method
