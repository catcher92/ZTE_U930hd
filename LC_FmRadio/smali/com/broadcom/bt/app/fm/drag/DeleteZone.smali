.class public Lcom/broadcom/bt/app/fm/drag/DeleteZone;
.super Landroid/widget/ImageView;
.source "DeleteZone.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/DropTarget;
.implements Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastAnimationSet;,
        Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final TRANSITION_DURATION:I = 0xfa


# instance fields
.field private mChanelDeleteListener:Lcom/broadcom/bt/app/fm/drag/ChanelDeleteListener;

.field private mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mHandleView:Landroid/view/View;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mOrientation:I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 121
    sget-object v1, Lcom/broadcom/bt/app/fm/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOrientation:I

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return-void
.end method

.method private createAnimations()V
    .locals 10

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 40
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 41
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 43
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 54
    :goto_0
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 56
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 57
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 58
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 72
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 73
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 76
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 86
    :goto_2
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 88
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 89
    iget v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 90
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 100
    :goto_3
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    :cond_3
    return-void

    .line 49
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 63
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 81
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_6
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 95
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_7
    new-instance v0, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/app/fm/drag/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    goto :goto_3
.end method


# virtual methods
.method public acceptDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)Z
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DeleteZone acceptDrop()......."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    check-cast p1, Lcom/broadcom/bt/app/fm/drag/DragButton;

    .end local p1
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/app/fm/drag/DragButton;

    .line 137
    .local v0, v:Lcom/broadcom/bt/app/fm/drag/DragButton;
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mChanelDeleteListener:Lcom/broadcom/bt/app/fm/drag/ChanelDeleteListener;

    invoke-interface {v1, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelDeleteListener;->onChanelDelete(Landroid/view/View;)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public onDragEnter(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragEnter()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onDragExit(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragExit()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onDragOver(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragOver()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->createAnimations()V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragStart()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 166
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 191
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void
.end method

.method public setChanelDeleteListener(Lcom/broadcom/bt/app/fm/drag/ChanelDeleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mChanelDeleteListener:Lcom/broadcom/bt/app/fm/drag/ChanelDeleteListener;

    .line 28
    return-void
.end method

.method public setDragController(Lcom/broadcom/bt/app/fm/drag/DragLayer;)V
    .locals 0
    .parameter "dragLayer"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    .line 113
    return-void
.end method

.method public setHandleView(Landroid/view/View;)V
    .locals 0
    .parameter "handleView"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/DeleteZone;->mHandleView:Landroid/view/View;

    .line 117
    return-void
.end method
