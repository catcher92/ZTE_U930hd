.class Lcom/android/phone/IpDialChecker$PhonenumberChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IpDialChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IpDialChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonenumberChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IpDialChecker;


# direct methods
.method private constructor <init>(Lcom/android/phone/IpDialChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/phone/IpDialChecker$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IpDialChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/IpDialChecker;Lcom/android/phone/IpDialChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/IpDialChecker$PhonenumberChangedBroadcastReceiver;-><init>(Lcom/android/phone/IpDialChecker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v1, "IpDialChecker"

    const-string v2, "PhonenumberChangedBroadcastReceiver.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SMART_IP_DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/phone/IpDialChecker$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IpDialChecker;

    #calls: Lcom/android/phone/IpDialChecker;->getIpSettings()V
    invoke-static {v1}, Lcom/android/phone/IpDialChecker;->access$100(Lcom/android/phone/IpDialChecker;)V

    .line 26
    :cond_0
    return-void
.end method
