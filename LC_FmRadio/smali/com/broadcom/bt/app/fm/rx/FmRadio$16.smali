.class Lcom/broadcom/bt/app/fm/rx/FmRadio$16;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->zteFmTurnTune()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 3532
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3536
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 3537
    .local v1, iInt:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 3538
    .local v0, iDec:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    mul-int/lit8 v3, v1, 0x64

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 3539
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3540
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 3544
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setFrequency(I)V

    .line 3549
    return-void

    .line 3541
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3542
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    goto :goto_0
.end method
