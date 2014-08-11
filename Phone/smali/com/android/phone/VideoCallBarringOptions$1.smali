.class Lcom/android/phone/VideoCallBarringOptions$1;
.super Ljava/lang/Object;
.source "VideoCallBarringOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VideoCallBarringOptions;->createPasswordDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallBarringOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 454
    invoke-static {}, Lcom/android/phone/VideoCallBarringOptions;->access$000()[Z

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v3

    invoke-static {}, Lcom/android/phone/VideoCallBarringOptions;->access$000()[Z

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v4

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v2, v3

    .line 455
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->bInited:Z
    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->access$200(Lcom/android/phone/VideoCallBarringOptions;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallBarringOptions;->finish()V

    .line 462
    :goto_1
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 459
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions$1;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->access$300(Lcom/android/phone/VideoCallBarringOptions;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
