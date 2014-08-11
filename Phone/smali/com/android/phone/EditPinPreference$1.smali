.class Lcom/android/phone/EditPinPreference$1;
.super Ljava/lang/Object;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPinPreference;->onCreateDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectionEnd:I

.field private selectionStart:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/phone/EditPinPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPinPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/EditPinPreference$1;->this$0:Lcom/android/phone/EditPinPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/phone/EditPinPreference$1;->this$0:Lcom/android/phone/EditPinPreference;

    #getter for: Lcom/android/phone/EditPinPreference;->textfield:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditPinPreference;->access$000(Lcom/android/phone/EditPinPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPinPreference$1;->selectionStart:I

    .line 106
    iget-object v1, p0, Lcom/android/phone/EditPinPreference$1;->this$0:Lcom/android/phone/EditPinPreference;

    #getter for: Lcom/android/phone/EditPinPreference;->textfield:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditPinPreference;->access$000(Lcom/android/phone/EditPinPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPinPreference$1;->selectionEnd:I

    .line 107
    iget-object v1, p0, Lcom/android/phone/EditPinPreference$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 108
    iget v1, p0, Lcom/android/phone/EditPinPreference$1;->selectionStart:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/phone/EditPinPreference$1;->selectionEnd:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 109
    iget v0, p0, Lcom/android/phone/EditPinPreference$1;->selectionStart:I

    .line 110
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/android/phone/EditPinPreference$1;->this$0:Lcom/android/phone/EditPinPreference;

    #getter for: Lcom/android/phone/EditPinPreference;->textfield:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditPinPreference;->access$000(Lcom/android/phone/EditPinPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/EditPinPreference$1;->this$0:Lcom/android/phone/EditPinPreference;

    #getter for: Lcom/android/phone/EditPinPreference;->textfield:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditPinPreference;->access$000(Lcom/android/phone/EditPinPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 113
    .end local v0           #tempSelection:I
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/EditPinPreference$1;->temp:Ljava/lang/CharSequence;

    .line 97
    return-void
.end method
