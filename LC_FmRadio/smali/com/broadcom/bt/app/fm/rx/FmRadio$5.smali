.class Lcom/broadcom/bt/app/fm/rx/FmRadio$5;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchAllChannelStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1620
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1623
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v0

    .line 1626
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1629
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
