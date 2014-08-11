.class public Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;
.super Landroid/view/View;
.source "FmRadioFrequencySlider.java"


# static fields
.field public static final FREQ_STEP:I = 0x14


# instance fields
.field bg:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field freq:I

.field private height:I

.field private listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

.field private maxFreq:I

.field private maxX:I

.field private minFreq:I

.field private minX:I

.field slider:Landroid/graphics/Bitmap;

.field sliderX:I

.field private touchDownStartSliderX:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 31
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 32
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 36
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 31
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 32
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 41
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private drawBackground()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const v3, 0x3f333333

    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005a

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 73
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 78
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    .line 79
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    .line 81
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 83
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    .line 84
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v7, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v8, p:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    const/high16 v0, 0x41c0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    return-void
.end method

.method private freqToX(I)I
    .locals 5
    .parameter "freq"

    .prologue
    .line 217
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v0, v3, v4

    .line 218
    .local v0, freqRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v2, v3, v4

    .line 220
    .local v2, xRange:I
    const/4 v1, 0x0

    .line 221
    .local v1, x:I
    if-eqz v0, :cond_0

    .line 222
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v4, p1, v4

    mul-int/2addr v4, v2

    div-int/2addr v4, v0

    add-int v1, v3, v4

    .line 224
    :cond_0
    return v1
.end method

.method private xToFreq(I)I
    .locals 5
    .parameter "x"

    .prologue
    .line 200
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v1, v3, v4

    .line 201
    .local v1, freqRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v2, v3, v4

    .line 203
    .local v2, xRange:I
    const/4 v0, 0x0

    .line 204
    .local v0, freq:I
    if-eqz v2, :cond_0

    .line 205
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v4, p1, v4

    mul-int/2addr v4, v1

    div-int/2addr v4, v2

    add-int v0, v3, v4

    .line 208
    :cond_0
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-ne v3, p1, :cond_1

    .line 209
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_1
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x14

    mul-int/lit8 v3, v3, 0x14

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    add-int v0, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x4b

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 45
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    .line 46
    iput p2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    .line 47
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    if-lez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->drawBackground()V

    .line 49
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 50
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 52
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return v3

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 162
    .local v0, action:I
    if-nez v0, :cond_4

    .line 163
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->touchDownStartSliderX:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 166
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v1, v2, :cond_3

    .line 167
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 170
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderDown()V

    .line 194
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    goto :goto_0

    .line 168
    :cond_3
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v1, v2, :cond_1

    .line 169
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_1

    .line 173
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 176
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v1, v2, :cond_6

    .line 177
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 180
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->xToFreq(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderDrag(I)V

    goto :goto_2

    .line 178
    :cond_6
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v1, v2, :cond_5

    .line 179
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_3

    .line 183
    :cond_7
    if-ne v0, v3, :cond_8

    .line 184
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->xToFreq(I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    .line 185
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-interface {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderSet(I)V

    goto :goto_2

    .line 187
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 189
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->touchDownStartSliderX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 190
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderCancel()V

    goto :goto_2
.end method

.method public setFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 143
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    .line 144
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 145
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v0, v1, :cond_1

    .line 146
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 151
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v0, v1, :cond_0

    .line 148
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_0
.end method

.method public setFrequencyRange(II)V
    .locals 1
    .parameter "minFreq"
    .parameter "maxFreq"

    .prologue
    .line 55
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 56
    iput p2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 57
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    if-lez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->drawBackground()V

    .line 59
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 60
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 62
    :cond_0
    return-void
.end method

.method public setListener(Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    .line 230
    return-void
.end method
