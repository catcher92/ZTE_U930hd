.class Lcom/broadcom/bt/app/fm/rx/FmRadio$14;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->zteFmCreateSleepDlg()V
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
    .line 3468
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 3470
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3471
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    aget-object v5, v1, p2

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3472
    if-ltz p2, :cond_0

    array-length v4, v1

    if-gt p2, v4, :cond_0

    .line 3474
    aget-object v4, v1, p2

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3475
    .local v0, currSeconds:I
    mul-int/lit8 v4, v0, 0x3c

    int-to-long v2, v4

    .line 3476
    .local v2, seconds:J
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->initiateSleepTimer(J)V
    invoke-static {v4, v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3600(Lcom/broadcom/bt/app/fm/rx/FmRadio;J)V

    .line 3477
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3480
    .end local v0           #currSeconds:I
    .end local v2           #seconds:J
    :cond_0
    return-void
.end method
