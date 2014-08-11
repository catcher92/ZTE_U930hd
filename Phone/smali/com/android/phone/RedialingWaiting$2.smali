.class Lcom/android/phone/RedialingWaiting$2;
.super Landroid/content/BroadcastReceiver;
.source "RedialingWaiting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RedialingWaiting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RedialingWaiting;


# direct methods
.method constructor <init>(Lcom/android/phone/RedialingWaiting;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/phone/RedialingWaiting$2;->this$0:Lcom/android/phone/RedialingWaiting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    sget-object v0, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/android/phone/RedialingWaiting$2;->this$0:Lcom/android/phone/RedialingWaiting;

    invoke-virtual {v0}, Lcom/android/phone/RedialingWaiting;->finish()V

    .line 80
    return-void
.end method
