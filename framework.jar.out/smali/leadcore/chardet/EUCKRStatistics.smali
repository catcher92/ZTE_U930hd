.class public Lleadcore/chardet/EUCKRStatistics;
.super Lleadcore/chardet/nsEUCStatistics;
.source "EUCKRStatistics.java"


# static fields
.field static mFirstByteFreq:[F

.field static mFirstByteMean:F

.field static mFirstByteStdDev:F

.field static mFirstByteWeight:F

.field static mSecondByteFreq:[F

.field static mSecondByteMean:F

.field static mSecondByteStdDev:F

.field static mSecondByteWeight:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5e

    const v1, 0x3c2e4b02

    .line 60
    invoke-direct {p0}, Lleadcore/chardet/nsEUCStatistics;-><init>()V

    .line 62
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteFreq:[F

    .line 160
    const v0, 0x3cd1a869

    sput v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteStdDev:F

    .line 161
    sput v1, Lleadcore/chardet/EUCKRStatistics;->mFirstByteMean:F

    .line 162
    const v0, 0x3f25be6e

    sput v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteWeight:F

    .line 164
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteFreq:[F

    .line 262
    const v0, 0x3c645804

    sput v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteStdDev:F

    .line 263
    sput v1, Lleadcore/chardet/EUCKRStatistics;->mSecondByteMean:F

    .line 264
    const v0, 0x3eb48323

    sput v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteWeight:F

    .line 265
    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x1t 0xd8t 0x39t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x87t 0x6bt 0x3dt
        0xd9t 0xe9t 0x7t 0x3dt
        0xf3t 0x91t 0x14t 0x3bt
        0xd1t 0xb1t 0x83t 0x3ct
        0x40t 0xbft 0x6ft 0x3ct
        0xd8t 0x11t 0x7t 0x3dt
        0xd8t 0x11t 0x87t 0x3bt
        0xa1t 0xbat 0x39t 0x3ct
        0x4dt 0xc0t 0x6ft 0x3dt
        0xc0t 0xeat 0xc8t 0x3ct
        0xf1t 0xbct 0xd4t 0x3ct
        0x12t 0xdet 0x5et 0x3dt
        0x3ct 0x66t 0xa0t 0x3ct
        0x46t 0x95t 0x81t 0x3dt
        0x33t 0x6bt 0xe9t 0x3dt
        0x63t 0xd1t 0xf4t 0x3ct
        0x59t 0xa4t 0x19t 0x3et
        0x52t 0x48t 0x72t 0x3dt
        0x29t 0x92t 0x2ft 0x3bt
        0x40t 0x16t 0x22t 0x3ct
        0x47t 0x1ft 0x73t 0x3ct
        0xf8t 0x1ct 0xd8t 0x3ct
        0x4et 0x7ft 0x76t 0x3ct
        0xf3t 0x3et 0x8et 0x3dt
        0x85t 0x8t 0xb8t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 164
    :array_1
    .array-data 0x4
        0xdbt 0xc1t 0x88t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0xd1t 0x5at 0x51t 0x3ct
        0x67t 0x81t 0xf6t 0x3ct
        0x29t 0x92t 0x2ft 0x3bt
        0xdft 0x1at 0xd8t 0x3bt
        0x79t 0x23t 0xf3t 0x3at
        0xb4t 0x1t 0x58t 0x3at
        0xb6t 0xdat 0xc3t 0x3bt
        0x0t 0x52t 0x9bt 0x3bt
        0x27t 0xa3t 0x4at 0x3bt
        0xb4t 0x1t 0x58t 0x3at
        0x3ct 0x66t 0xa0t 0x3ct
        0x14t 0xcct 0x18t 0x3dt
        0xd8t 0x11t 0x7t 0x3ct
        0x40t 0xbft 0x6ft 0x3ct
        0x9ft 0x22t 0x87t 0x3at
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x23t 0x58t 0x3bt
        0xd8t 0x11t 0x7t 0x3bt
        0xc3t 0x9at 0xcat 0x3bt
        0xb6t 0xdat 0xc3t 0x3bt
        0xb4t 0x1t 0x58t 0x3at
        0x7bt 0xf8t 0xb2t 0x3ct
        0x47t 0x1ft 0x73t 0x3ct
        0xf9t 0xf4t 0x58t 0x3dt
        0xe5t 0xd1t 0x8dt 0x3ct
        0x86t 0xe3t 0xf9t 0x3bt
        0xb4t 0x1t 0xd8t 0x39t
        0xb4t 0x1t 0x58t 0x3at
        0x69t 0x56t 0x36t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x1t 0xd8t 0x39t
        0x42t 0x23t 0xd8t 0x3at
        0xb6t 0xdat 0xc3t 0x3bt
        0xd7t 0xa5t 0x86t 0x3dt
        0x47t 0x76t 0xa5t 0x3ct
        0x5bt 0x96t 0xaft 0x3ct
        0x40t 0xbft 0x6ft 0x3ct
        0xd8t 0x11t 0x87t 0x3bt
        0x42t 0x23t 0xd8t 0x3at
        0xb4t 0x1t 0x58t 0x3at
        0xb4t 0x1t 0x58t 0x3at
        0xe4t 0xbbt 0x54t 0x3dt
        0x3ct 0x66t 0xa0t 0x3ct
        0x93t 0xc8t 0xbet 0x3ct
        0xf8t 0x1ct 0xd8t 0x3ct
        0x47t 0x76t 0x25t 0x3dt
        0xf3t 0x91t 0x14t 0x3ct
        0xct 0x23t 0xbdt 0x3at
        0x79t 0x23t 0x73t 0x3bt
        0x79t 0x23t 0xf3t 0x3bt
        0xct 0x23t 0xbdt 0x3at
        0xdft 0x1at 0x58t 0x3ct
        0x45t 0x12t 0x3dt 0x3bt
        0xb4t 0x1t 0xd8t 0x39t
        0x42t 0x23t 0x58t 0x3bt
        0xf1t 0xbct 0xd4t 0x3ct
        0xb4t 0x1t 0xd8t 0x39t
        0xb4t 0x1t 0xd8t 0x39t
        0xc3t 0x9at 0xcat 0x3bt
        0x42t 0x23t 0x58t 0x3bt
        0x62t 0x2et 0x89t 0x3dt
        0x29t 0x92t 0x2ft 0x3bt
        0xf3t 0x91t 0x14t 0x3bt
        0x69t 0x56t 0x36t 0x3ct
        0xb4t 0x1t 0xd8t 0x39t
        0x47t 0x76t 0x25t 0x3ct
        0x55t 0xdft 0x79t 0x3ct
        0x86t 0xe3t 0xf9t 0x3bt
        0x70t 0xcft 0x33t 0x3dt
        0x79t 0x23t 0x73t 0x3bt
        0x29t 0x92t 0x2ft 0x3bt
        0xct 0x23t 0xbdt 0x3at
        0x62t 0xf6t 0x32t 0x3ct
        0x45t 0x12t 0x3dt 0x3bt
        0xf3t 0x91t 0x14t 0x3ct
        0x43t 0xc6t 0xa3t 0x3ct
        0xb4t 0x1t 0xd8t 0x39t
        0xdet 0x71t 0xat 0x3ct
        0x7ft 0xdat 0xa8t 0x3bt
        0x0t 0x0t 0x0t 0x0t
        0x47t 0x76t 0x25t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x23t 0xd8t 0x3at
        0xbdt 0x3at 0x47t 0x3ct
        0xa8t 0x1at 0x3dt 0x3ct
        0xdft 0x1at 0xd8t 0x3bt
        0x79t 0x23t 0xf3t 0x3at
        0x62t 0xf6t 0x32t 0x3ct
        0xb4t 0x1t 0xd8t 0x39t
        0xb2t 0x2at 0xc2t 0x3ct
        0x79t 0x23t 0x73t 0x3bt
        0x79t 0x23t 0xf3t 0x3at
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 52
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lleadcore/chardet/EUCKRStatistics;->mSecondByteWeight:F

    return v0
.end method
