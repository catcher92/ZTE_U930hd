.class Lcom/android/phone/GsmUmtsAddLocalNumber$1;
.super Ljava/lang/Object;
.source "GsmUmtsAddLocalNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAddLocalNumber;->onCreate(Landroid/os/Bundle;)V
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
    .line 100
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$200(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$100()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 103
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$1;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #getter for: Lcom/android/phone/GsmUmtsAddLocalNumber;->mPhoneName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$400(Lcom/android/phone/GsmUmtsAddLocalNumber;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/GsmUmtsAddLocalNumber$1$1;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber$1;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 124
    return-void
.end method
