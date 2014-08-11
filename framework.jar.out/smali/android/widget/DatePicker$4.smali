.class Landroid/widget/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final MAX_MONTH_LEN:I

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iget-object v0, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1100(Landroid/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mNumberOfMonths:I
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1200(Landroid/widget/DatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$4;->MAX_MONTH_LEN:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 277
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$4;->MAX_MONTH_LEN:I

    if-le v1, v2, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/DatePicker$4;->MAX_MONTH_LEN:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, newStr:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 284
    .end local v0           #newStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1300(Landroid/widget/DatePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 272
    return-void
.end method
