.class Lcom/android/phone/PhoneRestrictSetting$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 130
    const-string v0, "PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++AirplaneModeReceiver onreceive+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #calls: Lcom/android/phone/PhoneRestrictSetting;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$100(Lcom/android/phone/PhoneRestrictSetting;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    .line 136
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
