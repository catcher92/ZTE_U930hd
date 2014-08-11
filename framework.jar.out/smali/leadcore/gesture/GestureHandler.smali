.class public Lleadcore/gesture/GestureHandler;
.super Ljava/lang/Object;
.source "GestureHandler.java"


# static fields
.field static final FEAT_SYS_MULTI_TOUCH:Z = true

.field static final IN_MULTI_CAPTURE:I = 0x2

.field static final IN_MULTI_PENDING:I = 0x3

.field static final IN_SINGL_CAPTURE:I = 0x1

.field static final mendtrack:Z


# instance fields
.field private final TESTPOINTS:I

.field bufcnt0:I

.field bufcnt1:I

.field bufx0:F

.field bufx1:F

.field bufy0:F

.field bufy1:F

.field private inpt:[F

.field private lastkick:J

.field private mAction:I

.field private mAngle:F

.field private mCnt:I

.field private mDeviceId:I

.field private mDirection:I

.field private final mDisplay:Landroid/view/Display;

.field private mDistance:F

.field private mFingerCnt:I

.field private mFirstTm:J

.field private mGotCancel:Z

.field private mLastEvent:Lleadcore/gesture/GestureEvent;

.field private mLastTrack:I

.field final mMultitouch:Z

.field private mOldAction:I

.field private mOldMode:I

.field private mOutsideSrc:Z

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private mouseCap:I

.field private oldZoom:F


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 3
    .parameter "disp"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lleadcore/gesture/GestureHandler;->mOldMode:I

    .line 27
    const/16 v0, 0x400

    new-array v0, v0, [F

    iput-object v0, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lleadcore/gesture/GestureHandler;->TESTPOINTS:I

    .line 274
    iput v1, p0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    .line 275
    iput v1, p0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    .line 276
    iput v2, p0, Lleadcore/gesture/GestureHandler;->bufx0:F

    iput v2, p0, Lleadcore/gesture/GestureHandler;->bufx1:F

    .line 277
    iput v2, p0, Lleadcore/gesture/GestureHandler;->bufy0:F

    iput v2, p0, Lleadcore/gesture/GestureHandler;->bufy1:F

    .line 579
    const-string v0, "hw.touch.multitouch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lleadcore/gesture/GestureHandler;->mMultitouch:Z

    .line 44
    iput v1, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 45
    iput v1, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 46
    iput v1, p0, Lleadcore/gesture/GestureHandler;->mOldAction:I

    .line 47
    iput-object p1, p0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    .line 48
    return-void
.end method

.method private checkOffscreenUp([FII)I
    .locals 8
    .parameter "indat"
    .parameter "N"
    .parameter "orien"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 54
    iget-boolean v4, p0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    if-ge p2, v4, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v3

    .line 55
    :cond_1
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 56
    .local v0, mSrcH:I
    :goto_1
    int-to-float v4, v0

    aget v5, p1, v7

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    aget v4, p1, v7

    add-int/lit8 v5, v0, 0x32

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 58
    iget v4, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v5, p0, Lleadcore/gesture/GestureHandler;->minX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v6, p0, Lleadcore/gesture/GestureHandler;->minY:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v4, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v5, p0, Lleadcore/gesture/GestureHandler;->minX:F

    sub-float/2addr v4, v5

    float-to-double v1, v4

    .line 59
    .local v1, scaleV:D
    :goto_2
    const-wide v4, 0x3ee4f8b580000000L

    cmpg-double v4, v1, v4

    if-lez v4, :cond_0

    .line 61
    iget v4, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v5, p0, Lleadcore/gesture/GestureHandler;->minY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v6, p0, Lleadcore/gesture/GestureHandler;->minX:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 63
    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    aget v4, p1, v7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    .line 55
    .end local v0           #mSrcH:I
    .end local v1           #scaleV:D
    :cond_2
    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_1

    .line 58
    .restart local v0       #mSrcH:I
    :cond_3
    iget v4, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v5, p0, Lleadcore/gesture/GestureHandler;->minY:F

    sub-float/2addr v4, v5

    float-to-double v1, v4

    goto :goto_2

    .line 63
    .restart local v1       #scaleV:D
    :cond_4
    const/4 v3, 0x4

    goto :goto_0
.end method

.method private examGuesture([FI)D
    .locals 48
    .parameter "indat"
    .parameter "N"

    .prologue
    .line 74
    const/4 v11, 0x2

    .line 75
    .local v11, M:I
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [D

    move-object/from16 v32, v0

    .line 76
    .local v32, param:[D
    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 77
    .local v38, x:[D
    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 v39, v0

    .line 78
    .local v39, y:[D
    move/from16 v0, p2

    new-array v2, v0, [D

    .line 79
    .local v2, B:[D
    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 80
    .local v17, T:[D
    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 82
    .local v16, S:[D
    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxY:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minY:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxX:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minX:F

    move/from16 v42, v0

    sub-float v41, v41, v42

    cmpl-float v40, v40, v41

    if-lez v40, :cond_0

    const/16 v35, 0x1

    .line 83
    .local v35, rotate:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxX:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minX:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxY:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minY:F

    move/from16 v42, v0

    sub-float v41, v41, v42

    cmpl-float v40, v40, v41

    if-lez v40, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxX:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minX:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v36, v0

    .line 84
    .local v36, scaleV:D
    :goto_1
    mul-int/lit8 v40, p2, 0x2

    add-int/lit8 v40, v40, -0x2

    aget v40, p1, v40

    const/16 v41, 0x0

    aget v41, p1, v41

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v20, v0

    .line 85
    .local v20, absoffx:D
    mul-int/lit8 v40, p2, 0x2

    add-int/lit8 v40, v40, -0x1

    aget v40, p1, v40

    const/16 v41, 0x1

    aget v41, p1, v41

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 87
    .local v22, absoffy:D
    if-eqz v35, :cond_2

    .line 89
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 91
    mul-int/lit8 v40, v28, 0x2

    aget v40, p1, v40

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minX:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v40, v40, v36

    aput-wide v40, v39, v28

    .line 92
    mul-int/lit8 v40, v28, 0x2

    add-int/lit8 v40, v40, 0x1

    aget v40, p1, v40

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minY:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v40, v40, v36

    aput-wide v40, v38, v28

    .line 89
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 82
    .end local v20           #absoffx:D
    .end local v22           #absoffy:D
    .end local v28           #i:I
    .end local v35           #rotate:Z
    .end local v36           #scaleV:D
    :cond_0
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 83
    .restart local v35       #rotate:Z
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->maxY:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minY:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v36, v0

    goto :goto_1

    .line 97
    .restart local v20       #absoffx:D
    .restart local v22       #absoffy:D
    .restart local v36       #scaleV:D
    :cond_2
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 99
    mul-int/lit8 v40, v28, 0x2

    aget v40, p1, v40

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minX:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v40, v40, v36

    aput-wide v40, v38, v28

    .line 100
    mul-int/lit8 v40, v28, 0x2

    add-int/lit8 v40, v40, 0x1

    aget v40, p1, v40

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->minY:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v40, v40, v36

    aput-wide v40, v39, v28

    .line 97
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 105
    :cond_3
    const-wide/16 v18, 0x0

    .line 106
    .local v18, Z:D
    const/16 v40, 0x0

    const-wide/high16 v41, 0x3ff0

    aput-wide v41, v2, v40

    .line 107
    move/from16 v0, p2

    int-to-double v5, v0

    .line 108
    .local v5, D1:D
    const-wide/16 v12, 0x0

    .line 109
    .local v12, P:D
    const-wide/16 v3, 0x0

    .line 111
    .local v3, C:D
    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 113
    aget-wide v40, v38, v28

    add-double v40, v40, v12

    sub-double v12, v40, v18

    .line 114
    aget-wide v40, v39, v28

    add-double v3, v3, v40

    .line 111
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 117
    :cond_4
    div-double/2addr v3, v5

    .line 118
    div-double/2addr v12, v5

    .line 119
    const-wide/16 v14, 0x0

    .line 120
    .local v14, Q:D
    const/16 v40, 0x0

    const/16 v41, 0x0

    aget-wide v41, v2, v41

    mul-double v41, v41, v3

    aput-wide v41, v32, v40

    .line 121
    const/16 v40, 0x1

    move/from16 v0, v40

    if-le v11, v0, :cond_6

    .line 123
    const/16 v40, 0x1

    const-wide/high16 v41, 0x3ff0

    aput-wide v41, v17, v40

    .line 124
    const/16 v40, 0x0

    neg-double v0, v12

    move-wide/from16 v41, v0

    aput-wide v41, v17, v40

    .line 125
    const-wide/16 v7, 0x0

    .line 126
    .local v7, D2:D
    const-wide/16 v3, 0x0

    .line 127
    const-wide/16 v9, 0x0

    .line 128
    .local v9, G:D
    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 130
    aget-wide v40, v38, v28

    sub-double v40, v40, v18

    sub-double v14, v40, v12

    .line 131
    mul-double v40, v14, v14

    add-double v7, v7, v40

    .line 132
    aget-wide v40, v39, v28

    mul-double v40, v40, v14

    add-double v3, v3, v40

    .line 133
    aget-wide v40, v38, v28

    sub-double v40, v40, v18

    mul-double v40, v40, v14

    mul-double v40, v40, v14

    add-double v9, v9, v40

    .line 128
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 135
    :cond_5
    div-double/2addr v3, v7

    .line 136
    div-double v12, v9, v7

    .line 137
    div-double v14, v7, v5

    .line 138
    move-wide v5, v7

    .line 139
    const/16 v40, 0x1

    const/16 v41, 0x1

    aget-wide v41, v17, v41

    mul-double v41, v41, v3

    aput-wide v41, v32, v40

    .line 140
    const/16 v40, 0x0

    const/16 v41, 0x0

    aget-wide v41, v17, v41

    mul-double v41, v41, v3

    const/16 v43, 0x0

    aget-wide v43, v32, v43

    add-double v41, v41, v43

    aput-wide v41, v32, v40

    .line 142
    .end local v7           #D2:D
    .end local v9           #G:D
    :cond_6
    const/16 v29, 0x2

    .local v29, j:I
    :goto_6
    move/from16 v0, v29

    if-ge v0, v11, :cond_b

    .line 144
    add-int/lit8 v40, v29, -0x1

    aget-wide v40, v17, v40

    aput-wide v40, v16, v29

    .line 145
    add-int/lit8 v40, v29, -0x1

    neg-double v0, v12

    move-wide/from16 v41, v0

    add-int/lit8 v43, v29, -0x1

    aget-wide v43, v17, v43

    mul-double v41, v41, v43

    add-int/lit8 v43, v29, -0x2

    aget-wide v43, v17, v43

    add-double v41, v41, v43

    aput-wide v41, v16, v40

    .line 146
    const/16 v40, 0x3

    move/from16 v0, v29

    move/from16 v1, v40

    if-lt v0, v1, :cond_7

    .line 148
    add-int/lit8 v30, v29, -0x2

    .local v30, k:I
    :goto_7
    const/16 v40, 0x1

    move/from16 v0, v30

    move/from16 v1, v40

    if-lt v0, v1, :cond_7

    .line 149
    neg-double v0, v12

    move-wide/from16 v40, v0

    aget-wide v42, v17, v30

    mul-double v40, v40, v42

    add-int/lit8 v42, v30, -0x1

    aget-wide v42, v17, v42

    add-double v40, v40, v42

    aget-wide v42, v2, v30

    mul-double v42, v42, v14

    sub-double v40, v40, v42

    aput-wide v40, v16, v30

    .line 148
    add-int/lit8 v30, v30, -0x1

    goto :goto_7

    .line 151
    .end local v30           #k:I
    :cond_7
    const/16 v40, 0x0

    neg-double v0, v12

    move-wide/from16 v41, v0

    const/16 v43, 0x0

    aget-wide v43, v17, v43

    mul-double v41, v41, v43

    const/16 v43, 0x0

    aget-wide v43, v2, v43

    mul-double v43, v43, v14

    sub-double v41, v41, v43

    aput-wide v41, v16, v40

    .line 152
    const-wide/16 v7, 0x0

    .line 153
    .restart local v7       #D2:D
    const-wide/16 v3, 0x0

    .line 154
    const-wide/16 v9, 0x0

    .line 155
    .restart local v9       #G:D
    const/16 v28, 0x0

    :goto_8
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    .line 157
    aget-wide v14, v16, v29

    .line 158
    add-int/lit8 v30, v29, -0x1

    .restart local v30       #k:I
    :goto_9
    if-ltz v30, :cond_8

    .line 159
    aget-wide v40, v38, v28

    sub-double v40, v40, v18

    mul-double v40, v40, v14

    aget-wide v42, v16, v30

    add-double v14, v40, v42

    .line 158
    add-int/lit8 v30, v30, -0x1

    goto :goto_9

    .line 160
    :cond_8
    mul-double v40, v14, v14

    add-double v7, v7, v40

    .line 161
    aget-wide v40, v39, v28

    mul-double v40, v40, v14

    add-double v3, v3, v40

    .line 162
    aget-wide v40, v38, v28

    sub-double v40, v40, v18

    mul-double v40, v40, v14

    mul-double v40, v40, v14

    add-double v9, v9, v40

    .line 155
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 164
    .end local v30           #k:I
    :cond_9
    div-double/2addr v3, v7

    .line 165
    div-double v12, v9, v7

    .line 166
    div-double v14, v7, v5

    .line 167
    move-wide v5, v7

    .line 168
    aget-wide v40, v16, v29

    mul-double v40, v40, v3

    aput-wide v40, v32, v29

    .line 169
    aget-wide v40, v16, v29

    aput-wide v40, v17, v29

    .line 170
    add-int/lit8 v30, v29, -0x1

    .restart local v30       #k:I
    :goto_a
    if-ltz v30, :cond_a

    .line 172
    aget-wide v40, v16, v30

    mul-double v40, v40, v3

    aget-wide v42, v32, v30

    add-double v40, v40, v42

    aput-wide v40, v32, v30

    .line 173
    aget-wide v40, v17, v30

    aput-wide v40, v2, v30

    .line 174
    aget-wide v40, v16, v30

    aput-wide v40, v17, v30

    .line 170
    add-int/lit8 v30, v30, -0x1

    goto :goto_a

    .line 142
    :cond_a
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 178
    .end local v7           #D2:D
    .end local v9           #G:D
    .end local v30           #k:I
    :cond_b
    const-wide/16 v24, 0x0

    .line 180
    .local v24, eps:D
    const/16 v28, 0x0

    :goto_b
    move/from16 v0, v28

    move/from16 v1, p2

    if-ge v0, v1, :cond_c

    .line 182
    aget-wide v40, v39, v28

    const/16 v42, 0x0

    aget-wide v42, v32, v42

    sub-double v40, v40, v42

    const/16 v42, 0x1

    aget-wide v42, v32, v42

    aget-wide v44, v38, v28

    mul-double v42, v42, v44

    sub-double v40, v40, v42

    aget-wide v42, v39, v28

    const/16 v44, 0x0

    aget-wide v44, v32, v44

    sub-double v42, v42, v44

    const/16 v44, 0x1

    aget-wide v44, v32, v44

    aget-wide v46, v38, v28

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    mul-double v40, v40, v42

    add-double v24, v24, v40

    .line 180
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 185
    :cond_c
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 186
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v24, v24, v40

    .line 188
    const-wide/16 v33, 0x0

    .line 190
    .local v33, ret:D
    const-wide v40, 0x3f95810624dd2f1bL

    cmpg-double v40, v24, v40

    if-gez v40, :cond_f

    .line 192
    add-int/lit8 v40, p2, -0x1

    aget-wide v40, v38, v40

    const/16 v42, 0x0

    aget-wide v42, v38, v42

    cmpl-double v40, v40, v42

    if-lez v40, :cond_e

    const-wide/16 v33, 0x0

    .line 193
    :goto_c
    if-eqz v35, :cond_d

    const-wide/high16 v40, 0x3ff0

    add-double v33, v33, v40

    .line 232
    :cond_d
    :goto_d
    const/16 v16, 0x0

    .line 233
    const/16 v38, 0x0

    .line 234
    const/16 v39, 0x0

    .line 235
    const/4 v2, 0x0

    .line 236
    const/16 v17, 0x0

    .line 237
    const/16 v32, 0x0

    .line 238
    return-wide v33

    .line 192
    :cond_e
    const-wide/high16 v33, 0x4000

    goto :goto_c

    .line 197
    :cond_f
    const/16 v31, 0x5

    .line 199
    .local v31, nG:I
    mul-double v40, v22, v22

    mul-double v42, v20, v20

    add-double v40, v40, v42

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->mDistance:F

    move/from16 v42, v0

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-object/from16 v0, p0

    iget v0, v0, Lleadcore/gesture/GestureHandler;->mDistance:F

    move/from16 v42, v0

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v26, v40, v42

    .line 200
    .local v26, gapRate:D
    if-eqz v35, :cond_10

    .line 202
    const/16 v28, 0x0

    :goto_e
    const/16 v40, 0x5

    move/from16 v0, v28

    move/from16 v1, v40

    if-ge v0, v1, :cond_11

    .line 204
    mul-int v40, v28, p2

    div-int/lit8 v40, v40, 0x5

    aget-wide v40, v39, v40

    aput-wide v40, v2, v28

    .line 205
    mul-int v40, v28, p2

    div-int/lit8 v40, v40, 0x5

    aget-wide v40, v38, v40

    aput-wide v40, v17, v28

    .line 202
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 210
    :cond_10
    const/16 v28, 0x0

    :goto_f
    const/16 v40, 0x5

    move/from16 v0, v28

    move/from16 v1, v40

    if-ge v0, v1, :cond_11

    .line 212
    mul-int v40, v28, p2

    div-int/lit8 v40, v40, 0x5

    aget-wide v40, v38, v40

    aput-wide v40, v2, v28

    .line 213
    mul-int v40, v28, p2

    div-int/lit8 v40, v40, 0x5

    aget-wide v40, v39, v40

    aput-wide v40, v17, v28

    .line 210
    add-int/lit8 v28, v28, 0x1

    goto :goto_f

    .line 218
    :cond_11
    const/16 v28, 0x0

    :goto_10
    const/16 v40, 0x3

    move/from16 v0, v28

    move/from16 v1, v40

    if-ge v0, v1, :cond_13

    .line 220
    add-int/lit8 v40, v28, 0x2

    aget-wide v40, v2, v40

    add-int/lit8 v42, v28, 0x1

    aget-wide v42, v2, v42

    sub-double v40, v40, v42

    add-int/lit8 v42, v28, 0x1

    aget-wide v42, v17, v42

    aget-wide v44, v17, v28

    sub-double v42, v42, v44

    mul-double v40, v40, v42

    add-int/lit8 v42, v28, 0x2

    aget-wide v42, v17, v42

    add-int/lit8 v44, v28, 0x1

    aget-wide v44, v17, v44

    sub-double v42, v42, v44

    add-int/lit8 v44, v28, 0x1

    aget-wide v44, v2, v44

    aget-wide v46, v2, v28

    sub-double v44, v44, v46

    mul-double v42, v42, v44

    cmpl-double v40, v40, v42

    if-lez v40, :cond_12

    .line 221
    const-wide/high16 v40, 0x3ff0

    add-double v33, v33, v40

    .line 218
    :cond_12
    add-int/lit8 v28, v28, 0x1

    goto :goto_10

    .line 224
    :cond_13
    const-wide/high16 v40, 0x3ff8

    cmpl-double v40, v33, v40

    if-lez v40, :cond_14

    const-wide/high16 v33, 0x4010

    .line 226
    :goto_11
    const-wide v40, 0x3f9eb851eb851eb8L

    cmpg-double v40, v26, v40

    if-gez v40, :cond_d

    .line 228
    const-wide/high16 v40, 0x4000

    add-double v33, v33, v40

    goto/16 :goto_d

    .line 224
    :cond_14
    const-wide/high16 v33, 0x4014

    goto :goto_11
.end method

.method private getAngle(FF)F
    .locals 1
    .parameter "dy"
    .parameter "dx"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method private insertPoint(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v3, 0x3fe

    .line 243
    iget v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    if-le v2, v3, :cond_0

    iput v3, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 245
    :cond_0
    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    aput p1, v2, v3

    .line 246
    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v3, v3, 0x1

    aput p2, v2, v3

    .line 248
    iget v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    const/16 v3, 0x3fc

    if-gt v2, v3, :cond_1

    .line 251
    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float v0, p1, v2

    .line 252
    .local v0, dx:F
    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sub-float v1, p2, v2

    .line 253
    .local v1, dy:F
    iget v2, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    float-to-double v2, v2

    float-to-double v4, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    .line 255
    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_1
    iget v2, p0, Lleadcore/gesture/GestureHandler;->minX:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    iput p1, p0, Lleadcore/gesture/GestureHandler;->minX:F

    .line 256
    :cond_2
    iget v2, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3

    iput p1, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    .line 257
    :cond_3
    iget v2, p0, Lleadcore/gesture/GestureHandler;->minY:F

    cmpl-float v2, v2, p2

    if-lez v2, :cond_4

    iput p2, p0, Lleadcore/gesture/GestureHandler;->minY:F

    .line 258
    :cond_4
    iget v2, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    cmpg-float v2, v2, p2

    if-gez v2, :cond_5

    iput p2, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    .line 260
    :cond_5
    iget v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 261
    return-void
.end method


# virtual methods
.method public analyzeMult(ILandroid/view/MotionEvent;II)Lleadcore/gesture/GestureEvent;
    .locals 23
    .parameter "action"
    .parameter "ev"
    .parameter "track"
    .parameter "orien"

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mLastTrack:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    rsub-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 289
    :cond_0
    const/16 v17, 0x0

    .line 290
    .local v17, evGesture:Lleadcore/gesture/GestureEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 291
    .local v22, y:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    .line 292
    .local v21, x:F
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    const/4 v2, 0x6

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 293
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 294
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 297
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 451
    :cond_2
    :goto_0
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    invoke-virtual {v2}, Lleadcore/gesture/GestureEvent;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    invoke-virtual {v2}, Lleadcore/gesture/GestureEvent;->recycle()V

    .line 455
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    .line 459
    :cond_5
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lleadcore/gesture/GestureHandler;->mLastTrack:I

    .line 461
    return-object v17

    .line 303
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x2

    aput v21, v2, v3

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x3

    aput v22, v2, v3

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float v15, v21, v2

    .line 307
    .local v15, dx:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float v16, v22, v2

    .line 309
    .local v16, dy:F
    float-to-double v2, v15

    move/from16 v0, v16

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mDistance:F

    .line 311
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mDistance:F

    const v3, 0x3f8ccccd

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v19

    .line 316
    .local v19, scrH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v20

    .line 318
    .local v20, scrW:I
    const/4 v2, 0x0

    cmpg-float v2, v2, v21

    if-gez v2, :cond_6

    move/from16 v0, v20

    int-to-float v2, v0

    cmpg-float v2, v21, v2

    if-gez v2, :cond_6

    const/4 v2, 0x0

    cmpg-float v2, v2, v22

    if-gez v2, :cond_6

    move/from16 v0, v19

    int-to-float v2, v0

    cmpg-float v2, v22, v2

    if-gez v2, :cond_6

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    .line 323
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lleadcore/gesture/GestureHandler;->mFirstTm:J

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mDeviceId:I

    .line 326
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->oldZoom:F

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lleadcore/gesture/GestureHandler;->getAngle(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mAngle:F

    .line 328
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->oldZoom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v7, 0x2

    aget v5, v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v5, v7

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    invoke-static/range {v2 .. v7}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v17

    .line 331
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 333
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    .line 337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    goto/16 :goto_0

    .line 321
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    goto :goto_1

    .line 343
    .end local v15           #dx:F
    .end local v16           #dy:F
    .end local v19           #scrH:I
    .end local v20           #scrW:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    .line 346
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    rsub-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    goto/16 :goto_0

    .line 350
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 371
    .local v13, curtick:J
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    if-nez v2, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    add-float v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    add-float v2, v2, v22

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    .line 385
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lleadcore/gesture/GestureHandler;->lastkick:J

    sub-long v2, v13, v2

    const-wide/16 v4, 0x5a

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    .line 387
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    rsub-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    goto/16 :goto_0

    .line 379
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    add-float v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    add-float v2, v2, v22

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    .line 381
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    goto :goto_2

    .line 392
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    if-lez v2, :cond_a

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    .line 395
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    aput v4, v2, v3

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    aput v4, v2, v3

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt0:I

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx0:F

    .line 402
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy0:F

    .line 404
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    if-lez v2, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    aput v4, v2, v3

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    aput v4, v2, v3

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufcnt1:I

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufx1:F

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->bufy1:F

    .line 416
    :cond_b
    move-object/from16 v0, p0

    iput-wide v13, v0, Lleadcore/gesture/GestureHandler;->lastkick:J

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    aput v21, v2, v3

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v3, v3, 0x1

    aput v22, v2, v3

    .line 423
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    rsub-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float v15, v2, v3

    .line 427
    .restart local v15       #dx:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float v16, v2, v3

    .line 428
    .restart local v16       #dy:F
    float-to-double v2, v15

    move/from16 v0, v16

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->mDistance:F

    div-float v18, v2, v3

    .line 430
    .local v18, newZoom:F
    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->oldZoom:F

    sub-float v2, v18, v2

    const v3, 0x3a83126f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lleadcore/gesture/GestureHandler;->oldZoom:F

    sub-float v2, v18, v2

    const v3, -0x457ced91

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 432
    :cond_c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lleadcore/gesture/GestureHandler;->oldZoom:F

    .line 433
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lleadcore/gesture/GestureHandler;->getAngle(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->mAngle:F

    sub-float v6, v2, v3

    .line 434
    .local v6, newAngle:F
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lleadcore/gesture/GestureHandler;->oldZoom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v7, 0x2

    aget v5, v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v5, v7

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    invoke-static/range {v2 .. v7}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v17

    .line 436
    goto/16 :goto_0

    .line 442
    .end local v6           #newAngle:F
    .end local v13           #curtick:J
    .end local v15           #dx:F
    .end local v16           #dy:F
    .end local v18           #newZoom:F
    :sswitch_2
    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    invoke-static/range {v7 .. v12}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v17

    .line 444
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lleadcore/gesture/GestureHandler;->mCnt:I

    goto/16 :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_2
        0x105 -> :sswitch_0
        0x106 -> :sswitch_2
    .end sparse-switch
.end method

.method public analyzeSole(ILandroid/view/MotionEvent;I)Lleadcore/gesture/GestureEvent;
    .locals 12
    .parameter "action"
    .parameter "ev"
    .parameter "orien"

    .prologue
    .line 467
    const/4 v6, 0x0

    .line 468
    .local v6, evGesture:Lleadcore/gesture/GestureEvent;
    if-nez p2, :cond_0

    move-object v7, v6

    .line 564
    .end local v6           #evGesture:Lleadcore/gesture/GestureEvent;
    .local v7, evGesture:Lleadcore/gesture/GestureEvent;
    :goto_0
    return-object v7

    .line 470
    .end local v7           #evGesture:Lleadcore/gesture/GestureEvent;
    .restart local v6       #evGesture:Lleadcore/gesture/GestureEvent;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 471
    .local v11, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 473
    .local v10, x:F
    packed-switch p1, :pswitch_data_0

    .line 559
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 561
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    invoke-virtual {v1}, Lleadcore/gesture/GestureEvent;->recycle()V

    .line 562
    :cond_2
    iput-object v6, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    :cond_3
    move-object v7, v6

    .line 564
    .end local v6           #evGesture:Lleadcore/gesture/GestureEvent;
    .restart local v7       #evGesture:Lleadcore/gesture/GestureEvent;
    goto :goto_0

    .line 475
    .end local v7           #evGesture:Lleadcore/gesture/GestureEvent;
    .restart local v6       #evGesture:Lleadcore/gesture/GestureEvent;
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 476
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v2, 0x0

    aput v10, v1, v2

    .line 477
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v2, 0x1

    aput v11, v1, v2

    .line 478
    const/4 v1, 0x2

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    .line 479
    const/4 v1, 0x0

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    .line 480
    iput v10, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iput v10, p0, Lleadcore/gesture/GestureHandler;->minX:F

    .line 481
    iput v11, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iput v11, p0, Lleadcore/gesture/GestureHandler;->minY:F

    .line 482
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lleadcore/gesture/GestureHandler;->mFirstTm:J

    .line 483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDeviceId:I

    goto :goto_1

    .line 487
    :pswitch_1
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 494
    invoke-direct {p0, v10, v11}, Lleadcore/gesture/GestureHandler;->insertPoint(FF)V

    goto :goto_1

    .line 498
    :pswitch_2
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 500
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 503
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 504
    .local v8, scrH:I
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 506
    .local v9, scrW:I
    const/4 v1, 0x0

    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v2, v8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 508
    const/4 v1, 0x0

    iput-boolean v1, p0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    .line 515
    :goto_2
    const/4 v1, 0x0

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    .line 517
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_8

    .line 519
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lleadcore/gesture/GestureHandler;->checkOffscreenUp([FII)I

    move-result v1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    .line 528
    :cond_4
    :goto_3
    iget-boolean v1, p0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    .line 530
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    .line 533
    :cond_5
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    if-eqz v1, :cond_6

    .line 536
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    packed-switch v1, :pswitch_data_1

    .line 546
    const/4 v0, 0x0

    .line 549
    .local v0, t:I
    :goto_4
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iget-wide v4, p0, Lleadcore/gesture/GestureHandler;->mFirstTm:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->minX:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v4, p0, Lleadcore/gesture/GestureHandler;->minY:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    iget-boolean v5, p0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    invoke-static/range {v0 .. v5}, Lleadcore/gesture/GestureEvent;->obtain(IFFFFZ)Lleadcore/gesture/GestureEvent;

    move-result-object v6

    .line 555
    .end local v0           #t:I
    .end local v8           #scrH:I
    .end local v9           #scrW:I
    :cond_6
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 556
    const/4 v1, 0x0

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    goto/16 :goto_1

    .line 512
    .restart local v8       #scrH:I
    .restart local v9       #scrW:I
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lleadcore/gesture/GestureHandler;->mOutsideSrc:Z

    goto :goto_2

    .line 521
    :cond_8
    iget v1, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v2, p0, Lleadcore/gesture/GestureHandler;->minX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lleadcore/gesture/GestureHandler;->maxX:F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->minX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v3, p0, Lleadcore/gesture/GestureHandler;->minY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lleadcore/gesture/GestureHandler;->maxY:F

    iget v4, p0, Lleadcore/gesture/GestureHandler;->minY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4461

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 523
    iget-object v1, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v2, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lleadcore/gesture/GestureHandler;->examGuesture([FI)D

    move-result-wide v1

    const-wide v3, 0x3ff7d70a3d70a3d7L

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDirection:I

    goto/16 :goto_3

    .line 538
    :pswitch_4
    const/4 v0, 0x2

    .restart local v0       #t:I
    goto :goto_4

    .line 539
    .end local v0           #t:I
    :pswitch_5
    const/4 v0, 0x4

    .restart local v0       #t:I
    goto :goto_4

    .line 540
    .end local v0           #t:I
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #t:I
    goto :goto_4

    .line 541
    .end local v0           #t:I
    :pswitch_7
    const/4 v0, 0x3

    .restart local v0       #t:I
    goto :goto_4

    .line 542
    .end local v0           #t:I
    :pswitch_8
    const/4 v0, 0x5

    .restart local v0       #t:I
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    neg-float v1, v1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    goto :goto_4

    .line 543
    .end local v0           #t:I
    :pswitch_9
    const/4 v0, 0x5

    .restart local v0       #t:I
    goto :goto_4

    .line 544
    .end local v0           #t:I
    :pswitch_a
    const/4 v0, 0x6

    .restart local v0       #t:I
    iget v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    neg-float v1, v1

    iput v1, p0, Lleadcore/gesture/GestureHandler;->mDistance:F

    goto :goto_4

    .line 545
    .end local v0           #t:I
    :pswitch_b
    const/4 v0, 0x6

    .restart local v0       #t:I
    goto :goto_4

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public consumeGesture()Lleadcore/gesture/GestureEvent;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    .line 570
    .local v0, ret:Lleadcore/gesture/GestureEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    .line 571
    return-object v0
.end method

.method public lastGesture()Lleadcore/gesture/GestureEvent;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lleadcore/gesture/GestureHandler;->mLastEvent:Lleadcore/gesture/GestureEvent;

    return-object v0
.end method

.method public onMotion(Landroid/view/MotionEvent;III)Lleadcore/gesture/GestureEvent;
    .locals 10
    .parameter "ev"
    .parameter "track"
    .parameter "orien"
    .parameter "mode"

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 588
    .local v0, action:I
    if-ne p4, v7, :cond_0

    .line 589
    invoke-virtual {p0, v0, p1, p3}, Lleadcore/gesture/GestureHandler;->analyzeSole(ILandroid/view/MotionEvent;I)Lleadcore/gesture/GestureEvent;

    move-result-object v4

    .line 656
    :goto_0
    return-object v4

    .line 605
    :cond_0
    iget v3, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    .line 608
    .local v3, oldFC:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit8 v1, v4, 0x5

    .line 609
    .local v1, firPtActionDown:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit8 v2, v4, 0x6

    .line 611
    .local v2, firPtActionUp:I
    if-eq v1, v5, :cond_1

    if-ne v2, v9, :cond_2

    .line 612
    :cond_1
    const/4 p2, 0x1

    .line 613
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v1, v5, :cond_7

    :cond_3
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    .line 616
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    if-nez v4, :cond_4

    .line 618
    iput-boolean v8, p0, Lleadcore/gesture/GestureHandler;->mGotCancel:Z

    .line 619
    iput v8, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    .line 621
    :cond_4
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    .line 635
    :cond_5
    :goto_1
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    if-le v4, v7, :cond_a

    .line 637
    if-nez v0, :cond_6

    iget v4, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    if-eq v4, v6, :cond_6

    .line 639
    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget-object v5, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v6, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v6, v6, -0x2

    aget v5, v5, v6

    aput v5, v4, v8

    .line 640
    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget-object v5, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    iget v6, p0, Lleadcore/gesture/GestureHandler;->mCnt:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    aput v5, v4, v7

    .line 642
    :cond_6
    invoke-virtual {p0, v0, p1, p2, p3}, Lleadcore/gesture/GestureHandler;->analyzeMult(ILandroid/view/MotionEvent;II)Lleadcore/gesture/GestureEvent;

    move-result-object v4

    goto :goto_0

    .line 623
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v7, v4, :cond_8

    if-ne v2, v9, :cond_9

    :cond_8
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    if-lez v4, :cond_9

    .line 626
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    goto :goto_1

    .line 628
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v6, v4, :cond_5

    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    if-lez v4, :cond_5

    .line 630
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lleadcore/gesture/GestureHandler;->mFingerCnt:I

    .line 631
    iput-boolean v7, p0, Lleadcore/gesture/GestureHandler;->mGotCancel:Z

    goto :goto_1

    .line 644
    :cond_a
    if-le v3, v7, :cond_b

    .line 646
    invoke-virtual {p0, v0, p1, p2, p3}, Lleadcore/gesture/GestureHandler;->analyzeMult(ILandroid/view/MotionEvent;II)Lleadcore/gesture/GestureEvent;

    move-result-object v4

    goto/16 :goto_0

    .line 649
    :cond_b
    iget v4, p0, Lleadcore/gesture/GestureHandler;->mouseCap:I

    if-ne v4, v6, :cond_c

    .line 651
    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v8

    .line 652
    iget-object v4, p0, Lleadcore/gesture/GestureHandler;->inpt:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v7

    .line 653
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 656
    :cond_c
    invoke-virtual {p0, v0, p1, p3}, Lleadcore/gesture/GestureHandler;->analyzeSole(ILandroid/view/MotionEvent;I)Lleadcore/gesture/GestureEvent;

    move-result-object v4

    goto/16 :goto_0
.end method
