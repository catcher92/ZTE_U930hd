.class Lcom/broadcom/bt/app/fm/rx/FmRadio$4;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1598
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 1604
    :cond_0
    return-void
.end method
