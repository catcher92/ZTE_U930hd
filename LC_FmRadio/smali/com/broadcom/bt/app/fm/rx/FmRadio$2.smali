.class Lcom/broadcom/bt/app/fm/rx/FmRadio$2;
.super Ljava/util/TimerTask;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->createStartUpDialog()Landroid/app/Dialog;
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
    .line 437
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$208(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    .line 440
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    return-void
.end method
