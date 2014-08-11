.class Lcom/android/phone/VoiceMailSetting$1;
.super Landroid/os/Handler;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 299
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 300
    .local v1, result:Landroid/os/AsyncResult;
    const/4 v0, 0x0

    .line 301
    .local v0, done:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 316
    const-string v2, "$$$$ All VM provider related changes done"

    #calls: Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$100(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    #getter for: Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$200(Lcom/android/phone/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    const/16 v3, 0x259

    #calls: Lcom/android/phone/VoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/VoiceMailSetting;->access$300(Lcom/android/phone/VoiceMailSetting;I)V

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    #calls: Lcom/android/phone/VoiceMailSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$400(Lcom/android/phone/VoiceMailSetting;)V

    .line 322
    :cond_1
    return-void

    .line 303
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    iput-object v1, v2, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 304
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    #calls: Lcom/android/phone/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$000(Lcom/android/phone/VoiceMailSetting;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v3, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ VM change complete msg, VM change done = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting$1;->this$0:Lcom/android/phone/VoiceMailSetting;

    iget-boolean v3, v3, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$100(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_0

    .line 304
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
