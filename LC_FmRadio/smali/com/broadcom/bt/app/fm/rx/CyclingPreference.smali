.class public Lcom/broadcom/bt/app/fm/rx/CyclingPreference;
.super Landroid/preference/ListPreference;
.source "CyclingPreference.java"


# instance fields
.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->setLayoutResource(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->setLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 27
    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->mValueText:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->mValueText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, newIndex:I
    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->setValueIndex(I)V

    .line 48
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->mValueText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method
