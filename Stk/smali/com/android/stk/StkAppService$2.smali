.class Lcom/android/stk/StkAppService$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 500
    iput-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 502
    if-nez p1, :cond_1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneListener: idle, isCallSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/stk/StkAppService;->access$1700()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/android/stk/StkAppService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1702(Z)Z

    .line 506
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v0, v2}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 509
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCatService:Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    invoke-static {}, Lcom/android/stk/StkAppService;->access$1300()Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 510
    invoke-static {}, Lcom/android/stk/StkAppService;->access$1600()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mPhoneListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 513
    :cond_1
    const-string v0, "mPhoneListener: not idle"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
