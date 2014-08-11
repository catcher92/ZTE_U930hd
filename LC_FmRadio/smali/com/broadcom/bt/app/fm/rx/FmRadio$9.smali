.class Lcom/broadcom/bt/app/fm/rx/FmRadio$9;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->createEditChannelDialog()Landroid/app/AlertDialog;
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
    .line 3173
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 3175
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3176
    .local v0, channelName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3178
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3200()I

    move-result v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->saveChannelName(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3300(Lcom/broadcom/bt/app/fm/rx/FmRadio;ILjava/lang/String;)V

    .line 3180
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 3181
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3182
    .local v1, msg0:Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3183
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3187
    .end local v1           #msg0:Landroid/os/Message;
    :goto_0
    return-void

    .line 3185
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showDialog(I)V

    goto :goto_0
.end method
