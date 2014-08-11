.class Lcom/broadcom/bt/app/fm/FMTestService$1$1;
.super Ljava/lang/Thread;
.source "FMTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/FMTestService$1;->init(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/fm/FMTestService$1;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1$1;->this$1:Lcom/broadcom/bt/app/fm/FMTestService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1$1;->this$1:Lcom/broadcom/bt/app/fm/FMTestService$1;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$1$1;->this$1:Lcom/broadcom/bt/app/fm/FMTestService$1;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 169
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1$1;->this$1:Lcom/broadcom/bt/app/fm/FMTestService$1;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMTestService:getProxy "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
