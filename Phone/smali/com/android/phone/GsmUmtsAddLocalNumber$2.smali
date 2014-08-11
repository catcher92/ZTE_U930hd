.class Lcom/android/phone/GsmUmtsAddLocalNumber$2;
.super Ljava/lang/Object;
.source "GsmUmtsAddLocalNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAddLocalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 233
    const-string v0, "GsmUmtsAddLocalNumber"

    const-string v1, "$$$$ mSaveClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$400(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$502(Lcom/android/phone/GsmUmtsAddLocalNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$500(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mHandler:Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$600(Lcom/android/phone/GsmUmtsAddLocalNumber;)Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 237
    const-string v0, "GsmUmtsAddLocalNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ nameValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->nameValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$500(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$200(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$702(Lcom/android/phone/GsmUmtsAddLocalNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$700(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mHandler:Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$600(Lcom/android/phone/GsmUmtsAddLocalNumber;)Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 242
    const-string v0, "GsmUmtsAddLocalNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$  numberValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->numberValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$700(Lcom/android/phone/GsmUmtsAddLocalNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$2;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->finish()V

    .line 246
    return-void
.end method
