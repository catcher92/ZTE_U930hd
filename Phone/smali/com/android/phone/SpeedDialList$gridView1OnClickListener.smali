.class Lcom/android/phone/SpeedDialList$gridView1OnClickListener;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SpeedDialList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "gridView1OnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 295
    const-string v0, "$$$$ gridView1OnClickListener..."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    iget-object v0, v0, Lcom/android/phone/SpeedDialList;->speedDialGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 297
    check-cast v0, Ljava/util/HashMap;

    .line 298
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/SpeedDialList;->currentName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/SpeedDialList;->access$202(Lcom/android/phone/SpeedDialList;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    if-nez p3, :cond_0

    .line 303
    const-string v0, "$$$$ voice mail ..."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    const-class v2, Lcom/android/phone/VoiceMailSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v1, "com.android.phone.SpeedDialList.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-virtual {v1, v0}, Lcom/android/phone/SpeedDialList;->startActivity(Landroid/content/Intent;)V

    .line 335
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ tmpphoneKey[position - 1]===>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$300(Lcom/android/phone/SpeedDialList;)[I

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$300(Lcom/android/phone/SpeedDialList;)[I

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$300(Lcom/android/phone/SpeedDialList;)[I

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 316
    const-string v0, "$$$$ info is exist..."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$300(Lcom/android/phone/SpeedDialList;)[I

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    #setter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v0, v1}, Lcom/android/phone/SpeedDialList;->access$402(Lcom/android/phone/SpeedDialList;I)I

    .line 319
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialList;->showDialog(I)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ ---------name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/SpeedDialMode;->getDialPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ ---------key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$300(Lcom/android/phone/SpeedDialList;)[I

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/SpeedDialMode;->getDialPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$500(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #setter for: Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/SpeedDialList;->access$602(Lcom/android/phone/SpeedDialList;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ $$0--=OldName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$600(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_1
    const-string v0, "$$$$ info is not exist..."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    add-int/lit8 v1, p3, 0x1

    #setter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v0, v1}, Lcom/android/phone/SpeedDialList;->access$402(Lcom/android/phone/SpeedDialList;I)I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ currentKey .=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->currentKey:I
    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->access$400(Lcom/android/phone/SpeedDialList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    #getter for: Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$700(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-virtual {v0, v3}, Lcom/android/phone/SpeedDialList;->showDialog(I)V

    goto/16 :goto_0
.end method
