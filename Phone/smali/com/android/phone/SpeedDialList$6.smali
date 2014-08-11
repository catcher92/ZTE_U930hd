.class Lcom/android/phone/SpeedDialList$6;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpeedDialList;->createClickDelMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ ReturnNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$1100(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | ReturnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$1200(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ currentKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->isContactInfo:Z
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$1300(Lcom/android/phone/SpeedDialList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/SpeedDialList;->access$1200(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/SpeedDialMode;->setFastDialPhoneName(ILjava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/SpeedDialList;->access$1100(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/SpeedDialMode;->setFastDialInfo(ILjava/lang/String;)Z

    .line 430
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$1000(Lcom/android/phone/SpeedDialList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$900(Lcom/android/phone/SpeedDialList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/SpeedDialList;->isContactInfo:Z
    invoke-static {v1, v2}, Lcom/android/phone/SpeedDialList;->access$1302(Lcom/android/phone/SpeedDialList;Z)Z

    .line 448
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/SpeedDialList;->dismissDialog(I)V

    .line 449
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$500(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, tempNumber:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ tempNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$600(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "$$$$ OldName..."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/SpeedDialMode;->setFastDialInfo(ILjava/lang/String;)Z

    .line 437
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/SpeedDialMode;->setFastDialPhoneName(ILjava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$1000(Lcom/android/phone/SpeedDialList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$6;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$900(Lcom/android/phone/SpeedDialList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
