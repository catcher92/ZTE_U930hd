.class Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$4;
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
    .line 303
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->removeDialog(I)V

    .line 306
    return-void
.end method
