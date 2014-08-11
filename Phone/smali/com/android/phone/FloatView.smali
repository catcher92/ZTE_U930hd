.class public Lcom/android/phone/FloatView;
.super Landroid/widget/ImageView;
.source "FloatView.java"


# static fields
.field private static final BG_LIST:[I

.field private static mFloatView:Lcom/android/phone/FloatView;

.field private static mWM:Landroid/view/WindowManager;

.field private static mXFloatView:I

.field private static mYFloatView:I

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private flashBackground:Ljava/lang/Runnable;

.field private hasMoved:Z

.field private lasteventX:I

.field private lasteventY:I

.field mHandler:Landroid/os/Handler;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    .line 26
    sput v1, Lcom/android/phone/FloatView;->mXFloatView:I

    .line 27
    sput v1, Lcom/android/phone/FloatView;->mYFloatView:I

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/FloatView;->BG_LIST:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 34
    new-instance v0, Lcom/android/phone/FloatView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FloatView$1;-><init>(Lcom/android/phone/FloatView;)V

    iput-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/phone/FloatView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/FloatView$2;-><init>(Lcom/android/phone/FloatView;)V

    iput-object v0, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    .line 61
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    .line 62
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    sget-object v0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 64
    sget-object v0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 65
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/phone/FloatView;->BG_LIST:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FloatView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static createFloatWindow(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, 0x140

    .line 68
    sget-object v5, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v5, :cond_0

    .line 116
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v5, Lcom/android/phone/FloatView;

    invoke-direct {v5, p0}, Lcom/android/phone/FloatView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    .line 74
    sget-object v5, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Lcom/android/phone/FloatView;->setImageResource(I)V

    .line 75
    sget-object v5, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    new-instance v6, Lcom/android/phone/FloatView$3;

    invoke-direct {v6}, Lcom/android/phone/FloatView$3;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/phone/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 82
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 83
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    const/16 v4, 0x6a

    .line 86
    .local v4, widthIcon:I
    const/16 v2, 0x6a

    .line 87
    .local v2, heigthIcon:I
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    sget-object v5, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    .local v3, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    .local v1, height:I
    const-string v5, "FloatView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFloatWindow, width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-ne v3, v8, :cond_2

    const/16 v5, 0x1e0

    if-ne v1, v5, :cond_2

    .line 96
    const/16 v4, 0x34

    .line 97
    const/16 v2, 0x37

    .line 105
    :cond_1
    :goto_1
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x237

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 106
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x3c

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 107
    const-string v5, "FloatView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFloatWindow, wmParams.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",wmParams.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sput v5, Lcom/android/phone/FloatView;->mXFloatView:I

    .line 109
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sput v5, Lcom/android/phone/FloatView;->mYFloatView:I

    .line 111
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    sget-object v5, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    const-string v5, "FloatView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFloatWindow, wmParams.width= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",wmParams.height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v5, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v6, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    sget-object v7, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    const/16 v5, 0xf0

    if-ne v3, v5, :cond_1

    if-ne v1, v8, :cond_1

    .line 100
    const/16 v4, 0x28

    .line 101
    const/16 v2, 0x28

    goto/16 :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 210
    const-string v0, "FloatView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public static removeFloatWindow()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    .line 131
    :cond_0
    return-void
.end method

.method public static resetFloatViewPosition()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/phone/FloatView;->mXFloatView:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    sget-object v0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/phone/FloatView;->mYFloatView:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    sget-object v0, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    sget-object v2, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static setFloatViewVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 134
    sget-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/phone/FloatView;->mFloatView:Lcom/android/phone/FloatView;

    invoke-virtual {v0, p0}, Lcom/android/phone/FloatView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method

.method private updateViewPosition()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 176
    sget-object v2, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/FloatView;->x:F

    iget v4, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 177
    sget-object v2, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/FloatView;->y:F

    iget v4, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 178
    const-string v2, "FloatView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lasteventX ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FloatView;->lasteventX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v2, "FloatView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lasteventY ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FloatView;->lasteventY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "FloatView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wmParams.x ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v2, "FloatView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wmParams.y ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 186
    .local v0, densityDpi:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "densityDpi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FloatView;->log(Ljava/lang/String;)V

    .line 187
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_2

    .line 188
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v7, :cond_0

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v7, :cond_1

    .line 189
    :cond_0
    sget-object v2, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iput-boolean v5, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 205
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 206
    sget-object v2, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 207
    return-void

    .line 192
    :cond_2
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_4

    .line 193
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v8, :cond_3

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v8, :cond_1

    .line 194
    :cond_3
    sget-object v2, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iput-boolean v5, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    goto :goto_0

    .line 199
    :cond_4
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_5

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_1

    .line 200
    :cond_5
    sget-object v2, Lcom/android/phone/FloatView;->mWM:Landroid/view/WindowManager;

    sget-object v3, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iput-boolean v5, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->x:F

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x41c8

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/FloatView;->y:F

    .line 145
    const-string v0, "FloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FloatView;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====currY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FloatView;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 149
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 152
    iget v0, p0, Lcom/android/phone/FloatView;->x:F

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 153
    iget v0, p0, Lcom/android/phone/FloatView;->y:F

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "====startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/FloatView;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FloatView;->updateViewPosition()V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/FloatView;->updateViewPosition()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    .line 164
    const-string v0, "FloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 50
    const-string v0, "FloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
