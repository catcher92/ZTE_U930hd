.class Lcom/android/server/MountService$1$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 548
    const-string v2, "MountService"

    const-string v3, "Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    iget-object v2, v2, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 551
    .local v1, size:I
    if-lez v1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    iget-object v2, v2, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 554
    iget-object v2, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    iget-object v2, v2, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 555
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    iget-object v2, v2, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V
    invoke-static {v2, v0}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/content/res/Resources;)V

    .line 558
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
