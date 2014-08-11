.class public Lcom/android/phone/AutoRedialing;
.super Landroid/app/Service;
.source "AutoRedialing.java"


# static fields
.field public static autoTimes:I


# instance fields
.field private AUTO_REDIALING:Ljava/lang/String;

.field private CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

.field protected MAX_REDIALING_TIMES:I

.field private START_AUTO_REDIALING_SERVER:Ljava/lang/String;

.field private busyRingingDisconnect:Landroid/content/BroadcastReceiver;

.field i:I

.field protected redialingNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/AutoRedialing;->autoTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/AutoRedialing;->MAX_REDIALING_TIMES:I

    .line 20
    const-string v0, "android.intent.action.STARTARSERVER"

    iput-object v0, p0, Lcom/android/phone/AutoRedialing;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;

    .line 21
    const-string v0, "android.intent.action.CLOSEARDIALOG"

    iput-object v0, p0, Lcom/android/phone/AutoRedialing;->CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

    .line 22
    const-string v0, "android.intent.action.AUTOREDAILING"

    iput-object v0, p0, Lcom/android/phone/AutoRedialing;->AUTO_REDIALING:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/AutoRedialing;->i:I

    .line 25
    new-instance v0, Lcom/android/phone/AutoRedialing$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AutoRedialing$1;-><init>(Lcom/android/phone/AutoRedialing;)V

    iput-object v0, p0, Lcom/android/phone/AutoRedialing;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/AutoRedialing;->AUTO_REDIALING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AutoRedialing;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/AutoRedialing;->handleRedialing(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/AutoRedialing;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AutoRedialing;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/phone/AutoRedialing;->timeToDismissDialog(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AutoRedialing;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/AutoRedialing;->CLOSE_AUTO_REDIALING_DIALOG:Ljava/lang/String;

    return-object v0
.end method

.method private handleRedialing(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 70
    const-string v2, "AutoRedialing"

    const-string v3, "handleRedialing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoRedialing;->redialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v0, it:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialing;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private timeToDismissDialog(J)V
    .locals 2
    .parameter "autoTime"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/AutoRedialing$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/AutoRedialing$2;-><init>(Lcom/android/phone/AutoRedialing;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method


# virtual methods
.method public getAutoTime(I)J
    .locals 2
    .parameter "autoTimes"

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 111
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 98
    :pswitch_0
    const-wide/16 v0, 0x1388

    goto :goto_0

    .line 102
    :pswitch_1
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 109
    :pswitch_2
    const-wide/32 v0, 0x2bf20

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    const-string v1, "onCreate"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    sput v1, Lcom/android/phone/AutoRedialing;->autoTimes:I

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/phone/AutoRedialing;->AUTO_REDIALING:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/AutoRedialing;->START_AUTO_REDIALING_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/AutoRedialing;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/AutoRedialing;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    const-string v0, "CountService"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/phone/AutoRedialing;->busyRingingDisconnect:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialing;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 82
    const-string v0, "AutoRedialing"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
