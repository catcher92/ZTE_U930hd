.class Lcom/broadcom/bt/app/fm/rx/FmRadio$3;
.super Ljava/util/TimerTask;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadWelView()V
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
    .line 471
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$208(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    .line 474
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    return-void
.end method
