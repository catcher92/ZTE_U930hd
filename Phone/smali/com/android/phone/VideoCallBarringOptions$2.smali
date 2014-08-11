.class Lcom/android/phone/VideoCallBarringOptions$2;
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
    .line 425
    iput-object p1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

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

    .line 427
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->access$300(Lcom/android/phone/VideoCallBarringOptions;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, passwd:Ljava/lang/String;
    const-string v1, "VideoCallBarringOptions"

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

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->bInited:Z
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$200(Lcom/android/phone/VideoCallBarringOptions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #calls: Lcom/android/phone/VideoCallBarringOptions;->reasonablePin(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/phone/VideoCallBarringOptions;->access$400(Lcom/android/phone/VideoCallBarringOptions;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #setter for: Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/VideoCallBarringOptions;->access$502(Lcom/android/phone/VideoCallBarringOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    const-string v1, "VideoCallBarringOptions"

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

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$500(Lcom/android/phone/VideoCallBarringOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v1, "VideoCallBarringOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ====>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/VideoCallBarringOptions;->access$000()[Z

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v5}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v5

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    invoke-static {}, Lcom/android/phone/VideoCallBarringOptions;->access$000()[Z

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v4

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v4

    #calls: Lcom/android/phone/VideoCallBarringOptions;->modeOfFacility(I)Z
    invoke-static {v1, v4}, Lcom/android/phone/VideoCallBarringOptions;->access$700(Lcom/android/phone/VideoCallBarringOptions;I)Z

    move-result v1

    :goto_0
    #setter for: Lcom/android/phone/VideoCallBarringOptions;->bActiveStatus:Z
    invoke-static {v3, v1}, Lcom/android/phone/VideoCallBarringOptions;->access$602(Lcom/android/phone/VideoCallBarringOptions;Z)Z

    .line 439
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I
    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->access$100(Lcom/android/phone/VideoCallBarringOptions;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->bActiveStatus:Z
    invoke-static {v4}, Lcom/android/phone/VideoCallBarringOptions;->access$600(Lcom/android/phone/VideoCallBarringOptions;)Z

    move-result v4

    #calls: Lcom/android/phone/VideoCallBarringOptions;->setFacilityLockToCard(IZ)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/VideoCallBarringOptions;->access$800(Lcom/android/phone/VideoCallBarringOptions;IZ)V

    .line 441
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #setter for: Lcom/android/phone/VideoCallBarringOptions;->isFirst:Z
    invoke-static {v1, v2}, Lcom/android/phone/VideoCallBarringOptions;->access$902(Lcom/android/phone/VideoCallBarringOptions;Z)Z

    .line 442
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->access$300(Lcom/android/phone/VideoCallBarringOptions;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const-string v1, "VideoCallBarringOptions"

    const-string v2, "#### @@ InputMethodManager  close!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    :cond_0
    move v1, v2

    .line 438
    goto :goto_0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions$2;->this$0:Lcom/android/phone/VideoCallBarringOptions;

    #getter for: Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->access$1000(Lcom/android/phone/VideoCallBarringOptions;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
