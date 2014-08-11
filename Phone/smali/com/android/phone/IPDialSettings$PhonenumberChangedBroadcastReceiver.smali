.class Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IPDialSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IPDialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonenumberChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IPDialSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/IPDialSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/IPDialSettings;Lcom/android/phone/IPDialSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;-><init>(Lcom/android/phone/IPDialSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SMART_IP_DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "mq"

    const-string v2, "mq~~~~onReceive action.phonenumber.changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mq~~~~onReceive local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/IPDialSettings;->access$100(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v1, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mq~~~~onReceive mipnum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/IPDialSettings;->access$200(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/IPDialSettings;->access$100(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/IPDialSettings;->access$200(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const-string v1, "mq"

    const-string v2, "mq~~~~onReceive setEnabled(true)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/IPDialSettings;->access$300(Lcom/android/phone/IPDialSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v1, "mq"

    const-string v2, "mq~~~~onReceive setEnabled(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lcom/android/phone/IPDialSettings;

    #getter for: Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/IPDialSettings;->access$300(Lcom/android/phone/IPDialSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
