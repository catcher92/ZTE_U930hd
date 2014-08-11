.class Lcom/android/phone/CallBarringOptions$1;
.super Ljava/lang/Object;
.source "CallBarringOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallBarringOptions;->createPasswordDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CallBarringOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

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

    .line 457
    invoke-static {}, Lcom/android/phone/CallBarringOptions;->access$000()[Z

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v3

    invoke-static {}, Lcom/android/phone/CallBarringOptions;->access$000()[Z

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v4

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v2, v3

    .line 458
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->bInited:Z
    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->access$200(Lcom/android/phone/CallBarringOptions;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringOptions;->finish()V

    .line 465
    :goto_1
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 462
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions$1;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->access$300(Lcom/android/phone/CallBarringOptions;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
