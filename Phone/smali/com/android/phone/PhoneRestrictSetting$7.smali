.class Lcom/android/phone/PhoneRestrictSetting$7;
.super Ljava/lang/Object;
.source "PhoneRestrictSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneRestrictSetting;->CreateRetryDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$7;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$7;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->DismissMyDialog(I)V

    .line 652
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$7;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->access$002(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    .line 653
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "dismiss wait Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$7;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$7;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    .line 657
    return-void
.end method
