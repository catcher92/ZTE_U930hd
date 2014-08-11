.class Lcom/android/phone/SpeedDialList$10;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpeedDialList;->createClickAddMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
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
    .line 502
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$700(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ ReturnNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$1100(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | ReturnName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$1200(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ currentKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->isContactInfo:Z
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$1300(Lcom/android/phone/SpeedDialList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$1200(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SpeedDialMode;->setFastDialPhoneName(ILjava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$1100(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SpeedDialMode;->setFastDialInfo(ILjava/lang/String;)Z

    .line 518
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SpeedDialList;->isContactInfo:Z
    invoke-static {v0, v1}, Lcom/android/phone/SpeedDialList;->access$1302(Lcom/android/phone/SpeedDialList;Z)Z

    .line 519
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$1000(Lcom/android/phone/SpeedDialList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$900(Lcom/android/phone/SpeedDialList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialList;->dismissDialog(I)V

    goto/16 :goto_0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SpeedDialList$10;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->access$700(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SpeedDialMode;->setFastDialInfo(ILjava/lang/String;)Z

    goto :goto_1
.end method
