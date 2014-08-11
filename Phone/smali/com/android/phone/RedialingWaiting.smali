.class public Lcom/android/phone/RedialingWaiting;
.super Landroid/app/Activity;
.source "RedialingWaiting.java"


# static fields
.field public static isNeedRedialing:Z

.field public static pd_redialing:Landroid/app/ProgressDialog;


# instance fields
.field private CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

.field private START_AUTO_REDIALING_SERVER:Ljava/lang/String;

.field private busyRingingDisconnect:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/RedialingWaiting;->isNeedRedialing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const-string v0, "android.intent.action.STARTARSERVER"

    iput-object v0, p0, Lcom/android/phone/RedialingWaiting;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;

    .line 21
    const-string v0, "android.intent.action.CLOSEARDIALOG"

    iput-object v0, p0, Lcom/android/phone/RedialingWaiting;->CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/phone/RedialingWaiting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/RedialingWaiting$2;-><init>(Lcom/android/phone/RedialingWaiting;)V

    iput-object v0, p0, Lcom/android/phone/RedialingWaiting;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0, v4}, Lcom/android/phone/RedialingWaiting;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/android/phone/RedialingWaiting;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    .local v0, win:Landroid/view/Window;
    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    iget-object v1, p0, Lcom/android/phone/RedialingWaiting;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/phone/RedialingWaiting;->CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/RedialingWaiting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/RedialingWaiting;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/RedialingWaiting;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    sput-boolean v4, Lcom/android/phone/RedialingWaiting;->isNeedRedialing:Z

    .line 37
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    .line 38
    sget-object v1, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    const v2, 0x7f0c028a

    invoke-virtual {p0, v2}, Lcom/android/phone/RedialingWaiting;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/RedialingWaiting$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RedialingWaiting$1;-><init>(Lcom/android/phone/RedialingWaiting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    sget-object v1, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 51
    sget-object v1, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    const v2, 0x7f0c028b

    invoke-virtual {p0, v2}, Lcom/android/phone/RedialingWaiting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    sget-object v1, Lcom/android/phone/RedialingWaiting;->pd_redialing:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/android/phone/RedialingWaiting;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/RedialingWaiting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/android/phone/RedialingWaiting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/RedialingWaiting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/RedialingWaiting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "RedialingWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RedialingWaiting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    iget-object v1, p0, Lcom/android/phone/RedialingWaiting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 66
    return-void
.end method
