.class public abstract Lleadcore/chardet/nsPSMDetector;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lleadcore/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

.field mVerifier:[Lleadcore/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lleadcore/chardet/nsEUCSampler;

    invoke-direct {v0}, Lleadcore/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lleadcore/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 66
    invoke-virtual {p0}, Lleadcore/chardet/nsPSMDetector;->Reset()V

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "langFlag"

    .prologue
    const/16 v1, 0x10

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lleadcore/chardet/nsEUCSampler;

    invoke-direct {v0}, Lleadcore/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    .line 70
    invoke-virtual {p0, p1}, Lleadcore/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 71
    invoke-virtual {p0}, Lleadcore/chardet/nsPSMDetector;->Reset()V

    .line 72
    return-void
.end method

.method public constructor <init>(I[Lleadcore/chardet/nsVerifier;[Lleadcore/chardet/nsEUCStatistics;)V
    .locals 2
    .parameter "aItems"
    .parameter "aVerifierSet"
    .parameter "aStatisticsSet"

    .prologue
    const/16 v1, 0x10

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lleadcore/chardet/nsEUCSampler;

    invoke-direct {v0}, Lleadcore/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    .line 76
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lleadcore/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 77
    iput-object p3, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    .line 78
    iput-object p2, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    .line 80
    iput p1, p0, Lleadcore/chardet/nsPSMDetector;->mClassItems:I

    .line 81
    invoke-virtual {p0}, Lleadcore/chardet/nsPSMDetector;->Reset()V

    .line 82
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DataEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 336
    iget-boolean v0, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    if-ne v0, v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget v0, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 342
    iput-boolean v2, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 349
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lleadcore/chardet/nsPSMDetector;->Sample([BIZ)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 345
    iput-boolean v2, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1
.end method

.method public HandleData([BI)Z
    .locals 11
    .parameter "aBuf"
    .parameter "len"

    .prologue
    const/4 v10, 0x1

    .line 260
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_9

    .line 261
    aget-byte v0, p1, v1

    .line 263
    .local v0, b:B
    const/4 v2, 0x0

    .local v2, j:I
    :cond_0
    :goto_1
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_3

    .line 265
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    aget-byte v8, v8, v2

    invoke-static {v7, v0, v8}, Lleadcore/chardet/nsVerifier;->getNextState(Lleadcore/chardet/nsVerifier;BB)B

    move-result v6

    .line 270
    .local v6, st:B
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 274
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 275
    iput-boolean v10, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 276
    iget-boolean v7, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 330
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v6           #st:B
    :goto_2
    return v7

    .line 278
    .restart local v0       #b:B
    .restart local v2       #j:I
    .restart local v6       #st:B
    :cond_1
    if-ne v6, v10, :cond_2

    .line 281
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    .line 282
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_0

    .line 283
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    iget v9, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    aget v8, v8, v9

    aput v8, v7, v2

    .line 284
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    iget v9, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    aget-byte v8, v8, v9

    aput-byte v8, v7, v2

    goto :goto_1

    .line 289
    :cond_2
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-byte v6, v7, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 294
    .end local v6           #st:B
    :cond_3
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-gt v7, v10, :cond_5

    .line 296
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ne v10, v7, :cond_4

    .line 297
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 299
    :cond_4
    iput-boolean v10, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 300
    iget-boolean v7, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    goto :goto_2

    .line 305
    :cond_5
    const/4 v5, 0x0

    .line 306
    .local v5, nonUCS2Num:I
    const/4 v4, 0x0

    .line 308
    .local v4, nonUCS2Idx:I
    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_7

    .line 309
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lleadcore/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lleadcore/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    .line 312
    add-int/lit8 v5, v5, 0x1

    .line 313
    move v4, v2

    .line 308
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 317
    :cond_7
    if-ne v10, v5, :cond_8

    .line 318
    iget-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v8, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 319
    iput-boolean v10, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 320
    iget-boolean v7, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2

    .line 260
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 327
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v4           #nonUCS2Idx:I
    .end local v5           #nonUCS2Num:I
    :cond_9
    iget-boolean v7, p0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v7, :cond_a

    .line 328
    invoke-virtual {p0, p1, p2}, Lleadcore/chardet/nsPSMDetector;->Sample([BI)V

    .line 330
    :cond_a
    iget-boolean v7, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2
.end method

.method public abstract Report(Ljava/lang/String;)V
.end method

.method public Reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-boolean v1, p0, Lleadcore/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v1, p0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    .line 87
    iput-boolean v2, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 88
    iget v1, p0, Lleadcore/chardet/nsPSMDetector;->mClassItems:I

    iput v1, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mState:[B

    aput-byte v2, v1, v0

    .line 92
    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    invoke-virtual {v1}, Lleadcore/chardet/nsEUCSampler;->Reset()V

    .line 96
    return-void
.end method

.method public Sample([BI)V
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lleadcore/chardet/nsPSMDetector;->Sample([BIZ)V

    .line 355
    return-void
.end method

.method public Sample([BIZ)V
    .locals 16
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "aLastChance"

    .prologue
    .line 359
    const/4 v8, 0x0

    .line 361
    .local v8, possibleCandidateNum:I
    const/4 v6, 0x0

    .line 363
    .local v6, eucNum:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v7, v10, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    if-eqz v10, :cond_0

    .line 365
    add-int/lit8 v6, v6, 0x1

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lleadcore/chardet/nsVerifier;->isUCS2()Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GB18030"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 368
    add-int/lit8 v8, v8, 0x1

    .line 363
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 371
    :cond_2
    const/4 v10, 0x1

    if-le v6, v10, :cond_7

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    .line 373
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v10, :cond_9

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lleadcore/chardet/nsEUCSampler;->Sample([BI)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lleadcore/chardet/nsPSMDetector;->mRunSampler:Z

    .line 375
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    invoke-virtual {v10}, Lleadcore/chardet/nsEUCSampler;->GetSomeData()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    invoke-virtual {v10}, Lleadcore/chardet/nsEUCSampler;->EnoughData()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_4
    if-ne v6, v8, :cond_9

    .line 378
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    invoke-virtual {v10}, Lleadcore/chardet/nsEUCSampler;->CalFreq()V

    .line 380
    const/4 v2, -0x1

    .line 381
    .local v2, bestIdx:I
    const/4 v4, 0x0

    .line 382
    .local v4, eucCnt:I
    const/4 v3, 0x0

    .line 383
    .local v3, bestScore:F
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v7, v10, :cond_8

    .line 384
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Big5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 387
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mSampler:Lleadcore/chardet/nsEUCSampler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v12, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v12, v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lleadcore/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v13, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v13, v13, v7

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lleadcore/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v14, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v14, v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lleadcore/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v15, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v15, v15, v7

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lleadcore/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lleadcore/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v9

    .line 393
    .local v9, score:F
    add-int/lit8 v5, v4, 0x1

    .end local v4           #eucCnt:I
    .local v5, eucCnt:I
    if-eqz v4, :cond_5

    cmpl-float v10, v3, v9

    if-lez v10, :cond_a

    .line 394
    :cond_5
    move v3, v9

    .line 395
    move v2, v7

    move v4, v5

    .line 383
    .end local v5           #eucCnt:I
    .end local v9           #score:F
    .restart local v4       #eucCnt:I
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 371
    .end local v2           #bestIdx:I
    .end local v3           #bestScore:F
    .end local v4           #eucCnt:I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 399
    .restart local v2       #bestIdx:I
    .restart local v3       #bestScore:F
    .restart local v4       #eucCnt:I
    :cond_8
    if-ltz v2, :cond_9

    .line 401
    move-object/from16 v0, p0

    iget-object v10, v0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lleadcore/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 402
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    .line 406
    .end local v2           #bestIdx:I
    .end local v3           #bestScore:F
    .end local v4           #eucCnt:I
    :cond_9
    return-void

    .restart local v2       #bestIdx:I
    .restart local v3       #bestScore:F
    .restart local v5       #eucCnt:I
    .restart local v9       #score:F
    :cond_a
    move v4, v5

    .end local v5           #eucCnt:I
    .restart local v4       #eucCnt:I
    goto :goto_3
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 410
    iget v3, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-gtz v3, :cond_0

    .line 411
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 412
    .local v1, nomatch:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "nomatch"

    aput-object v4, v1, v3

    .line 419
    .end local v1           #nomatch:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 416
    :cond_0
    iget v3, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    new-array v2, v3, [Ljava/lang/String;

    .line 417
    .local v2, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lleadcore/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v3, :cond_1

    .line 418
    iget-object v3, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    iget-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lleadcore/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 419
    goto :goto_0
.end method

.method protected initVerifiers(I)V
    .locals 10
    .parameter "currVerSet"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 100
    const/4 v1, 0x0

    .line 103
    .local v1, idx:I
    if-ltz p1, :cond_1

    const/4 v4, 0x6

    if-ge p1, v4, :cond_1

    .line 104
    move v0, p1

    .line 110
    .local v0, currVerifierSet:I
    :goto_0
    iput-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    .line 111
    iput-object v7, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    .line 113
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 115
    const/4 v4, 0x7

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsBIG5Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsBIG5Verifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsISO2022CNVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsEUCTWVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    .line 125
    const/4 v4, 0x7

    new-array v4, v4, [Lleadcore/chardet/nsEUCStatistics;

    aput-object v7, v4, v3

    new-instance v5, Lleadcore/chardet/Big5Statistics;

    invoke-direct {v5}, Lleadcore/chardet/Big5Statistics;-><init>()V

    aput-object v5, v4, v2

    aput-object v7, v4, v8

    new-instance v5, Lleadcore/chardet/EUCTWStatistics;

    invoke-direct {v5}, Lleadcore/chardet/EUCTWStatistics;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v7, v4, v5

    const/4 v5, 0x6

    aput-object v7, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    .line 247
    :cond_0
    :goto_1
    iget-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    if-eqz v4, :cond_7

    :goto_2
    iput-boolean v2, p0, Lleadcore/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 248
    iget-object v2, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    array-length v2, v2

    iput v2, p0, Lleadcore/chardet/nsPSMDetector;->mClassItems:I

    .line 250
    return-void

    .line 107
    .end local v0           #currVerifierSet:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #currVerifierSet:I
    goto :goto_0

    .line 137
    :cond_2
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    .line 139
    const/4 v4, 0x6

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsEUCKRVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsISO2022KRVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    goto :goto_1

    .line 150
    :cond_3
    if-ne v0, v9, :cond_4

    .line 152
    const/16 v4, 0x8

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsGB2312Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsGB2312Verifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsGB18030Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsGB18030Verifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsISO2022CNVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsHZVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsHZVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    goto/16 :goto_1

    .line 165
    :cond_4
    if-ne v0, v2, :cond_5

    .line 167
    const/4 v4, 0x7

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsSJISVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsSJISVerifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsEUCJPVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsISO2022JPVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    goto/16 :goto_1

    .line 178
    :cond_5
    if-ne v0, v8, :cond_6

    .line 180
    const/16 v4, 0xa

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsGB2312Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsGB2312Verifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsGB18030Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsGB18030Verifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsBIG5Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsBIG5Verifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsISO2022CNVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsHZVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsHZVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/nsEUCTWVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    .line 193
    const/16 v4, 0xa

    new-array v4, v4, [Lleadcore/chardet/nsEUCStatistics;

    aput-object v7, v4, v3

    new-instance v5, Lleadcore/chardet/GB2312Statistics;

    invoke-direct {v5}, Lleadcore/chardet/GB2312Statistics;-><init>()V

    aput-object v5, v4, v2

    aput-object v7, v4, v8

    new-instance v5, Lleadcore/chardet/Big5Statistics;

    invoke-direct {v5}, Lleadcore/chardet/Big5Statistics;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v7, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/EUCTWStatistics;

    invoke-direct {v6}, Lleadcore/chardet/EUCTWStatistics;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v7, v4, v5

    const/16 v5, 0x8

    aput-object v7, v4, v5

    const/16 v5, 0x9

    aput-object v7, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    goto/16 :goto_1

    .line 208
    :cond_6
    if-nez v0, :cond_0

    .line 210
    const/16 v4, 0xf

    new-array v4, v4, [Lleadcore/chardet/nsVerifier;

    new-instance v5, Lleadcore/chardet/nsUTF8Verifier;

    invoke-direct {v5}, Lleadcore/chardet/nsUTF8Verifier;-><init>()V

    aput-object v5, v4, v3

    new-instance v5, Lleadcore/chardet/nsSJISVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsSJISVerifier;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lleadcore/chardet/nsEUCJPVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v5, v4, v8

    new-instance v5, Lleadcore/chardet/nsISO2022JPVerifier;

    invoke-direct {v5}, Lleadcore/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/nsEUCKRVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lleadcore/chardet/nsISO2022KRVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/nsBIG5Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsBIG5Verifier;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lleadcore/chardet/nsEUCTWVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lleadcore/chardet/nsGB2312Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsGB2312Verifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lleadcore/chardet/nsGB18030Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsGB18030Verifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Lleadcore/chardet/nsISO2022CNVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lleadcore/chardet/nsHZVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsHZVerifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-instance v6, Lleadcore/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lleadcore/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-instance v6, Lleadcore/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-instance v6, Lleadcore/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lleadcore/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mVerifier:[Lleadcore/chardet/nsVerifier;

    .line 228
    const/16 v4, 0xf

    new-array v4, v4, [Lleadcore/chardet/nsEUCStatistics;

    aput-object v7, v4, v3

    aput-object v7, v4, v2

    new-instance v5, Lleadcore/chardet/EUCJPStatistics;

    invoke-direct {v5}, Lleadcore/chardet/EUCJPStatistics;-><init>()V

    aput-object v5, v4, v8

    aput-object v7, v4, v9

    const/4 v5, 0x4

    new-instance v6, Lleadcore/chardet/EUCKRStatistics;

    invoke-direct {v6}, Lleadcore/chardet/EUCKRStatistics;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v7, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lleadcore/chardet/Big5Statistics;

    invoke-direct {v6}, Lleadcore/chardet/Big5Statistics;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lleadcore/chardet/EUCTWStatistics;

    invoke-direct {v6}, Lleadcore/chardet/EUCTWStatistics;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lleadcore/chardet/GB2312Statistics;

    invoke-direct {v6}, Lleadcore/chardet/GB2312Statistics;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object v7, v4, v5

    const/16 v5, 0xa

    aput-object v7, v4, v5

    const/16 v5, 0xb

    aput-object v7, v4, v5

    const/16 v5, 0xc

    aput-object v7, v4, v5

    const/16 v5, 0xd

    aput-object v7, v4, v5

    const/16 v5, 0xe

    aput-object v7, v4, v5

    iput-object v4, p0, Lleadcore/chardet/nsPSMDetector;->mStatisticsData:[Lleadcore/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 247
    goto/16 :goto_2
.end method
