.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 266
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 268
    .local v1, opcode:I
    packed-switch v1, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    invoke-static {v2, v7}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 286
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v2, v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v2, v0}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 291
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v3, v2}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v5, v6, v2}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    .line 303
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)V

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$702(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_0

    .line 306
    :cond_4
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v3}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_1

    .line 312
    :pswitch_3
    const-string v2, "OP_END_SESSION"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 314
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 315
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleSessionEnd()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 317
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v3, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v7}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    :pswitch_4
    const-string v2, "OP_BOOT_COMPLETED"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 327
    :pswitch_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleDelayedCmd()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
