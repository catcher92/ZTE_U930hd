.class Lcom/broadcom/bt/app/fm/rx/FmRadio$15;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    .line 3497
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v2, 0x5

    .line 3500
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3502
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 3504
    .local v0, iValue:I
    const/16 v1, 0x57

    if-ne v1, v0, :cond_1

    .line 3506
    if-ge p3, v2, :cond_0

    .line 3508
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 3519
    .end local v0           #iValue:I
    :cond_0
    :goto_0
    return-void

    .line 3511
    .restart local v0       #iValue:I
    :cond_1
    const/16 v1, 0x6c

    if-ne v1, v0, :cond_0

    .line 3513
    if-eqz p3, :cond_0

    .line 3515
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method
