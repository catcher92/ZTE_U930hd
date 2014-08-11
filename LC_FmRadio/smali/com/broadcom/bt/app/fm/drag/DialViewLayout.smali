.class public Lcom/broadcom/bt/app/fm/drag/DialViewLayout;
.super Landroid/widget/RelativeLayout;
.source "DialViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;
    }
.end annotation


# static fields
.field public static final SLIDE_DEFAULT:I = 0x0

.field public static final SLIDE_LEFT:I = 0x1

.field public static final SLIDE_RIGHT:I = 0x2


# instance fields
.field private callbackListener:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

.field private down_x:I

.field private down_y:I

.field private mBt:[Landroid/graphics/Bitmap;

.field private mDistanceScaleLine:I

.field private mDrawable_x:I

.field private mDrawable_x2:I

.field private mDrawable_y:I

.field private mScaleLineNum:I

.field private mScaleLineResId:[I

.field private mSlideDirection:I

.field private mSlideStatus:Z

.field private mSlideVaue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x16

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineNum:I

    .line 20
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDistanceScaleLine:I

    .line 21
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    .line 22
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_y:I

    .line 23
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideVaue:I

    .line 25
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_x:I

    .line 26
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_y:I

    .line 28
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    .line 30
    iput v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideDirection:I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineResId:[I

    .line 38
    new-array v0, v1, [Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    .line 40
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideStatus:Z

    .line 49
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->callbackListener:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    .line 52
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->init(Landroid/util/AttributeSet;)V

    .line 53
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private drawDialView(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 148
    iget v1, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    .line 149
    .local v1, drawX:I
    iget v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_y:I

    .line 150
    .local v2, drawY:I
    const/4 v3, 0x0

    .line 151
    .local v3, index:I
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDistanceScaleLine:I

    .line 152
    .local v0, distance:I
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineNum:I

    if-ge v3, v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 169
    :cond_0
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    if-eq v4, v5, :cond_1

    .line 171
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    :cond_1
    return-void

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineNum:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_3

    .line 161
    add-int/lit8 v0, v0, 0x2

    .line 167
    :goto_1
    add-int/2addr v1, v0

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    const-string v2, "drawable_x"

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    .line 58
    const-string v2, "drawable_y"

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_y:I

    .line 60
    const-string v2, "scaleLineNum"

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineNum:I

    .line 61
    const-string v2, "distanceScaleLine"

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDistanceScaleLine:I

    .line 63
    const-string v2, "slideVaue"

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideVaue:I

    .line 65
    iget v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    iput v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    .line 67
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineNum:I

    if-ge v0, v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineResId:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 75
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mScaleLineResId:[I

    aget v1, v2, v0

    .line 72
    .local v1, scaleLineResId:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mBt:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->drawDialView(Landroid/graphics/Canvas;)V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    const-string v4, "DialViewLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertStaionAndSort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, action:I
    iget-boolean v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideStatus:Z

    if-nez v4, :cond_0

    .line 128
    :goto_0
    return v8

    .line 83
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->invalidate()V

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_x:I

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_y:I

    goto :goto_1

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 91
    .local v1, currX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 93
    .local v2, currY:I
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_x:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 94
    .local v3, dc:I
    iput v7, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideDirection:I

    .line 95
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideVaue:I

    if-le v3, v4, :cond_1

    .line 97
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    if-le v4, v5, :cond_2

    .line 99
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    .line 105
    :goto_2
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_x:I

    if-le v1, v4, :cond_3

    .line 107
    const/4 v4, 0x2

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideDirection:I

    goto :goto_1

    .line 103
    :cond_2
    iget v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x2:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDistanceScaleLine:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mDrawable_x:I

    goto :goto_2

    .line 111
    :cond_3
    iput v8, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideDirection:I

    goto :goto_1

    .line 117
    .end local v1           #currX:I
    .end local v2           #currY:I
    .end local v3           #dc:I
    :pswitch_2
    iput v7, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_x:I

    .line 118
    iput v7, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->down_y:I

    .line 119
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->callbackListener:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->callbackListener:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    iget v5, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideDirection:I

    invoke-interface {v4, v5}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;->onSlideHandler(I)V

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSlideCallback(Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->callbackListener:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    .line 145
    return-void
.end method

.method public setSlideStatus(Z)V
    .locals 0
    .parameter "slideStatus"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->mSlideStatus:Z

    .line 140
    return-void
.end method
