.class public Lleadcore/chardet/nsUTF8Verifier;
.super Lleadcore/chardet/nsVerifier;
.source "nsUTF8Verifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x66666666

    const v6, 0x44444444

    const/16 v5, 0x10

    const v4, 0x55555555

    const v3, 0x11111111

    .line 57
    invoke-direct {p0}, Lleadcore/chardet/nsVerifier;-><init>()V

    .line 59
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    .line 61
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 62
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x1

    const v2, 0x111111

    aput v2, v0, v1

    .line 63
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 64
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    .line 65
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 66
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 67
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 68
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 69
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 70
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 71
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 72
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 73
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 74
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 75
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 76
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 77
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const v1, 0x33332222

    aput v1, v0, v5

    .line 78
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x11

    aput v6, v0, v1

    .line 79
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    .line 80
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    .line 81
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x14

    aput v4, v0, v1

    .line 82
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x15

    aput v4, v0, v1

    .line 83
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 84
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    .line 85
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x18

    const v2, 0x66666600

    aput v2, v0, v1

    .line 86
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v7, v0, v1

    .line 87
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1a

    aput v7, v0, v1

    .line 88
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v7, v0, v1

    .line 89
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1c

    const v2, -0x77777779

    aput v2, v0, v1

    .line 90
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1d

    const v2, -0x77677778

    aput v2, v0, v1

    .line 91
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1e

    const v2, -0x44444446

    aput v2, v0, v1

    .line 92
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0xfedddc

    aput v2, v0, v1

    .line 96
    const/16 v0, 0x1a

    new-array v0, v0, [I

    sput-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    .line 98
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x0

    const v2, -0x53eeeeff

    aput v2, v0, v1

    .line 99
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x1

    const v2, 0x345678b9

    aput v2, v0, v1

    .line 100
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 101
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 102
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x22222222

    aput v2, v0, v1

    .line 103
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x22222222

    aput v2, v0, v1

    .line 104
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x6

    const v2, 0x11555511

    aput v2, v0, v1

    .line 105
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 106
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x8

    const v2, 0x11555111

    aput v2, v0, v1

    .line 107
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 108
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xa

    const v2, 0x11777711

    aput v2, v0, v1

    .line 109
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 110
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xc

    const v2, 0x11771111

    aput v2, v0, v1

    .line 111
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 112
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xe

    const v2, 0x11999911

    aput v2, v0, v1

    .line 113
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 114
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const v1, 0x11911111

    aput v1, v0, v5

    .line 115
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 116
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x12

    const v2, 0x11cccc11

    aput v2, v0, v1

    .line 117
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 118
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x14

    const v2, 0x11c11111

    aput v2, v0, v1

    .line 119
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 120
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x16

    const v2, 0x111ccc11

    aput v2, v0, v1

    .line 121
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 122
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x18

    const v2, 0x11000011

    aput v2, v0, v1

    .line 123
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 127
    const-string v0, "UTF-8"

    sput-object v0, Lleadcore/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    .line 128
    sput v5, Lleadcore/chardet/nsUTF8Verifier;->stFactor:I

    .line 130
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lleadcore/chardet/nsUTF8Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lleadcore/chardet/nsUTF8Verifier;->states:[I

    return-object v0
.end method
