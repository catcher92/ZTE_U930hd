.class Lcom/android/internal/telephony/VideoTelephonyService$1;
.super Landroid/os/RemoteCallbackList;
.source "VideoTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VideoTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/android/internal/telephony/IVideoTelephonyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/VideoTelephonyService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/VideoTelephonyService;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/VideoTelephonyService$1;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Lcom/android/internal/telephony/IVideoTelephonyListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VideoTelephonyService$1;->onCallbackDied(Lcom/android/internal/telephony/IVideoTelephonyListener;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/telephony/IVideoTelephonyListener;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService$1;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    const-string/jumbo v1, "onCallbackDied()..."

    #calls: Lcom/android/internal/telephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/VideoTelephonyService;->access$000(Lcom/android/internal/telephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService$1;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/VideoTelephonyService;->hasVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/VideoTelephonyService$1;->this$0:Lcom/android/internal/telephony/VideoTelephonyService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/VideoTelephonyService;->endCall()Z

    .line 89
    :cond_0
    return-void
.end method
