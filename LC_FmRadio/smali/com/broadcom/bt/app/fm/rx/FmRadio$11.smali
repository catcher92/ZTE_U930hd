.class Lcom/broadcom/bt/app/fm/rx/FmRadio$11;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->createSaveChannelDialog()Landroid/app/AlertDialog;
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
    .line 3219
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3221
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3222
    .local v0, channelName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3223
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannelSaveLoc()I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    .line 3224
    .local v1, i:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v2, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setChannel(I)V

    .line 3225
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->saveChannelName(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3300(Lcom/broadcom/bt/app/fm/rx/FmRadio;ILjava/lang/String;)V

    .line 3227
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 3231
    .end local v1           #i:I
    :goto_0
    return-void

    .line 3229
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showDialog(I)V

    goto :goto_0
.end method
