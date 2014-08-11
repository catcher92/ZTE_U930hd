.class Lcom/android/phone/Settings$1;
.super Landroid/telephony/PhoneStateListener;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->setScreenEnabled()V
    invoke-static {v0}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
