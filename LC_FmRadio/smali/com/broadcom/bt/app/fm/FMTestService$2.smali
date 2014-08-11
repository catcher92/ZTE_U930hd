.class Lcom/broadcom/bt/app/fm/FMTestService$2;
.super Ljava/lang/Object;
.source "FMTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/FMTestService;->doWhenRadioOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/FMTestService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/FMTestService;->access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mMinFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/FMTestService;->access$500(Lcom/broadcom/bt/app/fm/FMTestService;)I

    move-result v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mMaxFreq:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/FMTestService;->access$600(Lcom/broadcom/bt/app/fm/FMTestService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setMinMaxFreq(II)I

    .line 218
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/FMTestService;->access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->initFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/FMTestService;->access$300(Lcom/broadcom/bt/app/fm/FMTestService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.fm.FMTestService.FmTestIntOk"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-virtual {v2, v0}, Lcom/broadcom/bt/app/fm/FMTestService;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/FMTestService$2;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/FMTestService;->access$700(Lcom/broadcom/bt/app/fm/FMTestService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/broadcom/bt/app/fm/FMTestService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    return-void
.end method
