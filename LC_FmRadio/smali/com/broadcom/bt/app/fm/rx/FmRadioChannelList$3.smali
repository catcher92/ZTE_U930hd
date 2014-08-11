.class Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;
.super Ljava/lang/Object;
.source "FmRadioChannelList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->createEditChannelDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 289
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, channelName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v3

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->getSaveLoc(I)I
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I

    move-result v1

    .line 292
    .local v1, i:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mChannelName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->saveChannelName(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;ILjava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->removeDialog(I)V

    .line 294
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    .line 299
    .end local v1           #i:I
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->showDialog(I)V

    goto :goto_0
.end method
