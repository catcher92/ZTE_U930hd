.class Lcom/android/stk/StkAppService$1;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 481
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 484
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "MSG_SENDTR_SETUPCALL received"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 486
    const-string v1, "handler idle"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v1, v3}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 488
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCatService:Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    invoke-static {}, Lcom/android/stk/StkAppService;->access$1300()Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 489
    invoke-static {}, Lcom/android/stk/StkAppService;->access$1600()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mPhoneListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 490
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
