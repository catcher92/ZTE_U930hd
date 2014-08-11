.class Lcom/broadcom/bt/app/fm/rx/FmRadio$7;
.super Landroid/os/Handler;
.source "FmRadio.java"


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
    .line 2131
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private updateFrequency(II)V
    .locals 5
    .parameter "freq"
    .parameter "isCompletedSeekInt"

    .prologue
    .line 2140
    const-string v2, "FmRxRadio_TEST---- "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFrequency_test  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    if-gez p1, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 2150
    .local v1, isCompletedSeek:Z
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v2, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2151
    if-eqz v1, :cond_0

    .line 2154
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 2155
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2156
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2157
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_freq"

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2144
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isCompletedSeek:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2168
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2319
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2176
    :sswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setSignalStrength(I)V

    goto :goto_0

    .line 2179
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->updateFrequency(II)V

    goto :goto_0

    .line 2182
    :sswitch_3
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMutedState(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2186
    :sswitch_4
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setRdsState(I)V

    goto :goto_0

    .line 2189
    :sswitch_5
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAfState(I)V

    goto :goto_0

    .line 2193
    :sswitch_6
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 2205
    :sswitch_7
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->retryPendingCommands()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    goto :goto_0

    .line 2210
    :sswitch_8
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 2211
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2212
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2214
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2216
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 2219
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2220
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2222
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchAllChannelStart()V

    .line 2224
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    goto/16 :goto_0

    .line 2229
    :sswitch_9
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2231
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2233
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 2235
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isLoadingWel:Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1402(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2236
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2240
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    .line 2244
    const-string v0, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Single Auto Search reach to Min/Max, freq =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2248
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 2249
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto/16 :goto_0

    .line 2253
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto/16 :goto_0

    .line 2256
    :sswitch_b
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2257
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2265
    :sswitch_c
    const-string v0, "FmRxRadio"

    const-string v2, "Radio get proxy error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2268
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2270
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 2272
    :cond_7
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isLoadingWel:Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1402(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 2273
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1800(Lcom/broadcom/bt/app/fm/rx/FmRadio;Ljava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 2280
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 2281
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    goto/16 :goto_0

    .line 2285
    :sswitch_d
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 2291
    :sswitch_e
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2292
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2293
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2299
    :sswitch_f
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2000(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V

    goto/16 :goto_0

    .line 2302
    :sswitch_10
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateExpiredSleepTime()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    goto/16 :goto_0

    .line 2305
    :sswitch_11
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    .line 2306
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2307
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2308
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 2310
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-boolean v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    if-nez v1, :cond_0

    .line 2312
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iput-boolean v0, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 2313
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    goto/16 :goto_0

    .line 2174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_0
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_6
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x14 -> :sswitch_7
        0x64 -> :sswitch_10
        0x65 -> :sswitch_11
    .end sparse-switch
.end method
