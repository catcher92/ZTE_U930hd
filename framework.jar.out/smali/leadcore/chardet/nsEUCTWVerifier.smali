.class public Lleadcore/chardet/nsEUCTWVerifier;
.super Lleadcore/chardet/nsVerifier;
.source "nsEUCTWVerifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x33333333

    const v3, 0x22222222

    .line 57
    invoke-direct {p0}, Lleadcore/chardet/nsVerifier;-><init>()V

    .line 59
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    .line 61
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    aput v3, v0, v5

    .line 62
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const v1, 0x222222

    aput v1, v0, v6

    .line 63
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    aput v3, v0, v7

    .line 64
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x22220222

    aput v2, v0, v1

    .line 65
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 66
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 67
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 68
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 69
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 70
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 71
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 72
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 73
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 74
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 75
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 76
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 77
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v5, v0, v1

    .line 78
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x11

    const/high16 v2, 0x600

    aput v2, v0, v1

    .line 79
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v5, v0, v1

    .line 80
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v5, v0, v1

    .line 81
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x14

    const v2, 0x44444430

    aput v2, v0, v1

    .line 82
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x15

    const v2, 0x11111155

    aput v2, v0, v1

    .line 83
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x16

    const v2, 0x11111111

    aput v2, v0, v1

    .line 84
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x17

    const v2, 0x11111111

    aput v2, v0, v1

    .line 85
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x18

    const v2, 0x33331311

    aput v2, v0, v1

    .line 86
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    .line 87
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    .line 88
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    .line 89
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 90
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v4, v0, v1

    .line 91
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v4, v0, v1

    .line 92
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0x3333333

    aput v2, v0, v1

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    .line 98
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x14333011

    aput v1, v0, v5

    .line 99
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x22111111

    aput v1, v0, v6

    .line 100
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x10122222

    aput v1, v0, v7

    .line 101
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x3

    const v2, 0x11111000

    aput v2, v0, v1

    .line 102
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x101115

    aput v2, v0, v1

    .line 103
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x5

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 107
    const-string/jumbo v0, "x-euc-tw"

    sput-object v0, Lleadcore/chardet/nsEUCTWVerifier;->charset:Ljava/lang/String;

    .line 108
    const/4 v0, 0x7

    sput v0, Lleadcore/chardet/nsEUCTWVerifier;->stFactor:I

    .line 110
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lleadcore/chardet/nsEUCTWVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lleadcore/chardet/nsEUCTWVerifier;->states:[I

    return-object v0
.end method
