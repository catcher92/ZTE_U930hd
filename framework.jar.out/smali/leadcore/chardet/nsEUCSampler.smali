.class public Lleadcore/chardet/nsEUCSampler;
.super Ljava/lang/Object;
.source "nsEUCSampler.java"


# instance fields
.field public mFirstByteCnt:[I

.field public mFirstByteFreq:[F

.field public mSecondByteCnt:[I

.field public mSecondByteFreq:[F

.field mState:I

.field mThreshold:I

.field mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x5e

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lleadcore/chardet/nsEUCSampler;->mThreshold:I

    .line 42
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteCnt:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteCnt:[I

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteFreq:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteFreq:[F

    .line 49
    invoke-virtual {p0}, Lleadcore/chardet/nsEUCSampler;->Reset()V

    .line 50
    return-void
.end method


# virtual methods
.method CalFreq()V
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteFreq:[F

    iget-object v2, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 117
    iget-object v1, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteFreq:[F

    iget-object v2, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method EnoughData()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    iget v1, p0, Lleadcore/chardet/nsEUCSampler;->mThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method GetScore([FF[FF)F
    .locals 2
    .parameter "aFirstByteFreq"
    .parameter "aFirstByteWeight"
    .parameter "aSecondByteFreq"
    .parameter "aSecondByteWeight"

    .prologue
    .line 124
    iget-object v0, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteFreq:[F

    invoke-virtual {p0, p1, v0}, Lleadcore/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteFreq:[F

    invoke-virtual {p0, p3, v1}, Lleadcore/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method GetScore([F[F)F
    .locals 5
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, sum:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x5e

    if-ge v0, v3, :cond_0

    .line 133
    aget v3, p1, v0

    aget v4, p2, v0

    sub-float v1, v3, v4

    .line 134
    .local v1, s:F
    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1           #s:F
    :cond_0
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42bc

    div-float/2addr v3, v4

    return v3
.end method

.method GetSomeData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    iput v3, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    .line 54
    iput v3, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteCnt:[I

    iget-object v2, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method Sample([BI)Z
    .locals 9
    .parameter "aIn"
    .parameter "aLen"

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0xa1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    if-ne v4, v2, :cond_0

    .line 110
    :goto_0
    return v3

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 74
    .local v1, p:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_7

    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    if-eq v2, v4, :cond_7

    .line 76
    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 107
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    .line 74
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :pswitch_1
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 80
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_3

    .line 81
    :cond_2
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 83
    :cond_3
    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    .line 84
    iget-object v4, p0, Lleadcore/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 85
    const/4 v4, 0x2

    iput v4, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 92
    :pswitch_2
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    .line 94
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_4

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_5

    .line 96
    :cond_4
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 98
    :cond_5
    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lleadcore/chardet/nsEUCSampler;->mTotal:I

    .line 99
    iget-object v4, p0, Lleadcore/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 100
    iput v3, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 103
    :cond_6
    iput v2, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 110
    :cond_7
    iget v4, p0, Lleadcore/chardet/nsEUCSampler;->mState:I

    if-eq v2, v4, :cond_8

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_3

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
