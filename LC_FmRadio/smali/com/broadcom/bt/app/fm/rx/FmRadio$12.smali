.class Lcom/broadcom/bt/app/fm/rx/FmRadio$12;
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
    .line 3235
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$12;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$12;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->removeDialog(I)V

    .line 3238
    return-void
.end method
