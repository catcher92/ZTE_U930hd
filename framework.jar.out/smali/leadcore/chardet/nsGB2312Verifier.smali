.class public Lleadcore/chardet/nsGB2312Verifier;
.super Lleadcore/chardet/nsVerifier;
.source "nsGB2312Verifier.java"


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

    const v4, 0x22222222

    const v3, 0x11111111

    .line 57
    invoke-direct {p0}, Lleadcore/chardet/nsVerifier;-><init>()V

    .line 59
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    .line 61
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    aput v3, v0, v5

    .line 62
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const v1, 0x111111

    aput v1, v0, v6

    .line 63
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    aput v3, v0, v7

    .line 64
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    .line 65
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 66
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 67
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 68
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 69
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 70
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 71
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 72
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 73
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 74
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 75
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 76
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 77
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x10

    aput v5, v0, v1

    .line 78
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x11

    aput v5, v0, v1

    .line 79
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x12

    aput v5, v0, v1

    .line 80
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x13

    aput v5, v0, v1

    .line 81
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x14

    const v2, 0x22222220

    aput v2, v0, v1

    .line 82
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x15

    const v2, 0x33333322

    aput v2, v0, v1

    .line 83
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 84
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    .line 85
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x18

    aput v4, v0, v1

    .line 86
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    .line 87
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    .line 88
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    .line 89
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 90
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1d

    aput v4, v0, v1

    .line 91
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1e

    aput v4, v0, v1

    .line 92
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0x2222222

    aput v2, v0, v1

    .line 96
    new-array v0, v7, [I

    sput-object v0, Lleadcore/chardet/nsGB2312Verifier;->states:[I

    .line 98
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->states:[I

    const v1, 0x11111301

    aput v1, v0, v5

    .line 99
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->states:[I

    const v1, 0x112222

    aput v1, v0, v6

    .line 103
    const-string v0, "GB2312"

    sput-object v0, Lleadcore/chardet/nsGB2312Verifier;->charset:Ljava/lang/String;

    .line 104
    const/4 v0, 0x4

    sput v0, Lleadcore/chardet/nsGB2312Verifier;->stFactor:I

    .line 106
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lleadcore/chardet/nsGB2312Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lleadcore/chardet/nsGB2312Verifier;->states:[I

    return-object v0
.end method
