.class Lcom/android/phone/CallBarringOptions$2;
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
    .line 428
    iput-object p1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->access$300(Lcom/android/phone/CallBarringOptions;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, passwd:Ljava/lang/String;
    const-string v1, "CallBarringOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### createPasswordDialog   onClick,  passwd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , bInited = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->bInited:Z
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$200(Lcom/android/phone/CallBarringOptions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #calls: Lcom/android/phone/CallBarringOptions;->reasonablePin(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/phone/CallBarringOptions;->access$400(Lcom/android/phone/CallBarringOptions;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #setter for: Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/CallBarringOptions;->access$502(Lcom/android/phone/CallBarringOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    const-string v1, "CallBarringOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "####  passwd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , mPassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$500(Lcom/android/phone/CallBarringOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v1, "CallBarringOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ====>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallBarringOptions;->access$000()[Z

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v5}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v5

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    invoke-static {}, Lcom/android/phone/CallBarringOptions;->access$000()[Z

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v4

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v4

    #calls: Lcom/android/phone/CallBarringOptions;->modeOfFacility(I)Z
    invoke-static {v1, v4}, Lcom/android/phone/CallBarringOptions;->access$700(Lcom/android/phone/CallBarringOptions;I)Z

    move-result v1

    :goto_0
    #setter for: Lcom/android/phone/CallBarringOptions;->bActiveStatus:Z
    invoke-static {v3, v1}, Lcom/android/phone/CallBarringOptions;->access$602(Lcom/android/phone/CallBarringOptions;Z)Z

    .line 442
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    iget-object v3, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I
    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->access$100(Lcom/android/phone/CallBarringOptions;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->bActiveStatus:Z
    invoke-static {v4}, Lcom/android/phone/CallBarringOptions;->access$600(Lcom/android/phone/CallBarringOptions;)Z

    move-result v4

    #calls: Lcom/android/phone/CallBarringOptions;->setFacilityLockToCard(IZ)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/CallBarringOptions;->access$800(Lcom/android/phone/CallBarringOptions;IZ)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #setter for: Lcom/android/phone/CallBarringOptions;->isFirst:Z
    invoke-static {v1, v2}, Lcom/android/phone/CallBarringOptions;->access$902(Lcom/android/phone/CallBarringOptions;Z)Z

    .line 445
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    .line 449
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->access$300(Lcom/android/phone/CallBarringOptions;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const-string v1, "CallBarringOptions"

    const-string v2, "#### @@ InputMethodManager  close!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    :cond_0
    move v1, v2

    .line 441
    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions$2;->this$0:Lcom/android/phone/CallBarringOptions;

    #getter for: Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->access$1000(Lcom/android/phone/CallBarringOptions;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
