.class public Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;
.super Landroid/preference/DialogPreference;
.source "FmSNRThresholdBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final FM_DEFAULT_SNR:I = 0x0

.field public static final FM_MAX_SNR:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "FmSNRThresholdBar"


# instance fields
.field private initialValue:I

.field private max:I

.field private offset:I

.field private persistValue:I

.field private thresholdBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    .line 39
    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    .line 40
    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    .line 42
    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->offset:I

    .line 43
    const/16 v0, 0x1f

    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->max:I

    .line 47
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initView()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    .line 39
    iput v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    .line 40
    iput v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    .line 42
    iput v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->offset:I

    .line 43
    const/16 v0, 0x1f

    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->max:I

    .line 52
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initView()V

    .line 53
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setDialogLayoutResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setPositiveButtonText(I)V

    .line 59
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setNegativeButtonText(I)V

    .line 60
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setMax(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setProgress(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const-string v0, "FmSNRThresholdBar"

    const-string v1, "onBindDialogView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->max:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->offset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setPersistent(Z)V

    .line 83
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setProgress(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->thresholdBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 100
    .local v0, newValue:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 67
    const-string v0, "FmSNRThresholdBar"

    const-string v1, "onSetInitialValue()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p1, :cond_0

    const-string v0, "fm_pref_snr_thres"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    .line 70
    const-string v0, "FmSNRThresholdBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->setProgress(I)V

    .line 72
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 109
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 113
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 120
    iput p1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->max:I

    .line 121
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 135
    iput p1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->offset:I

    .line 136
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 128
    iput p1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->initialValue:I

    .line 129
    iput p1, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    .line 130
    iget v0, p0, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->persistString(Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/FmSNRThresholdBar;->notifyChanged()V

    .line 132
    return-void
.end method
