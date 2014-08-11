.class public Lcom/android/phone/CallMinuteAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallMinuteAlertReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallMinuteAlertReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 52
    const-string v0, "CallMinuteAlertReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private playTone()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "#### CallMinuteAlertReceiver:playTone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallMinuteAlertReceiver;->log(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x35

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->playCallwaitingTone(C)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/CallMinuteAlertReceiver;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/phone/CallMinuteAlertReceiver;->playTone()V

    .line 43
    return-void
.end method
