.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final ANR_ADDITIONAL_NUMBER_END:I = 0xc

.field static final ANR_ADDITIONAL_NUMBER_RECORD_ID:I = 0x0

.field static final ANR_ADDITIONAL_NUMBER_START:I = 0x3

.field static final ANR_BCD_NUMBER_LEN:I = 0x1

.field static final ANR_CAPABILITY_ID:I = 0xd

.field static final ANR_EXTENSION_ID:I = 0xe

.field static final ANR_TON_AND_NPI:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field anrExtRecord:I

.field anrNum1:Ljava/lang/String;

.field anrNum2:Ljava/lang/String;

.field anrNum3:Ljava/lang/String;

.field anrs:[Ljava/lang/String;

.field efid:I

.field efidAnr:I

.field efidEmail:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field mAnrPresentInIap:Z

.field mAnrTagNumberInIap:I

.field mEmailPresentInIap:Z

.field mEmailTagNumberInIap:I

.field mPhonebookSet:I

.field mPhonebookSetPosition:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field recordNumberAnr:I

.field recordNumberEmail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 49
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 152
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 153
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 154
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 49
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 144
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 145
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"

    .prologue
    const/16 v3, 0xff

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 49
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 56
    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 57
    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 161
    if-nez p3, :cond_0

    .line 162
    const-string p3, ""

    .line 164
    :cond_0
    if-nez p4, :cond_1

    .line 165
    const-string p4, ""

    .line 167
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 168
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 169
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    .line 174
    if-eqz p6, :cond_2

    .line 175
    aget-object v0, p6, v1

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 176
    const/4 v0, 0x1

    aget-object v0, p6, v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 177
    const/4 v0, 0x2

    aget-object v0, p6, v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 180
    :cond_2
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 4
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 49
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 129
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/telephony/IccCardRecord;)V
    .locals 10
    .parameter "cardRecord"

    .prologue
    const/16 v7, 0xff

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 46
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 47
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 48
    iput v7, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 49
    iput v7, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 54
    iput-boolean v8, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v8, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 56
    iput v6, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 57
    iput v6, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 182
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getIndex()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 183
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum1()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, recordEmail:Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    .line 186
    :cond_0
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 187
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 189
    :cond_1
    new-array v5, v9, [Ljava/lang/String;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 190
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum2()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum3()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum4()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum2()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum3()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getNum4()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getDcs()I

    move-result v0

    .line 195
    .local v0, dcs:I
    if-ne v0, v9, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getName()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, rawName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 198
    .local v3, rawNameField:[B
    const-string v1, ""

    .line 199
    .local v1, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 200
    array-length v5, v3

    invoke-static {v3, v8, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 207
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #rawName:Ljava/lang/String;
    .end local v3           #rawNameField:[B
    :goto_0
    return-void

    .line 204
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/IccCardRecord;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 137
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"

    .prologue
    const/4 v1, 0x0

    .line 141
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 124
    return-void
.end method

.method private encodingUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "gbString"

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 495
    .local v3, utfBytes:[C
    const-string v2, ""

    .line 496
    .local v2, unicodeBytes:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, byteIndex:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 498
    aget-char v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, hexB:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v1           #hexB:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private isArraysEqual([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    array-length v3, p1

    if-ne v3, v2, :cond_3

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-eqz v3, :cond_1

    array-length v3, p2

    if-ne v3, v2, :cond_3

    aget-object v3, p2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v1, v2

    .line 433
    :cond_2
    :goto_0
    return v1

    .line 421
    :cond_3
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_2

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 423
    aget-object v3, p1, v0

    if-nez v3, :cond_4

    .line 424
    const-string v3, ""

    aput-object v3, p1, v0

    .line 426
    :cond_4
    aget-object v3, p2, v0

    if-nez v3, :cond_5

    .line 427
    const-string v3, ""

    aput-object v3, p2, v0

    .line 429
    :cond_5
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 433
    goto :goto_0
.end method

.method private static final isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 469
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 470
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 476
    :cond_0
    const/4 v1, 0x1

    .line 478
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isChinese(Ljava/lang/String;)Z
    .locals 4
    .parameter "strName"

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 483
    .local v1, ch:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 484
    aget-char v0, v1, v2

    .line 485
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/AdnRecord;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    const/4 v3, 0x1

    .line 489
    .end local v0           #c:C
    :goto_1
    return v3

    .line 483
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0           #c:C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 820
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 823
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 825
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 827
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 829
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 854
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 840
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 844
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 846
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 849
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 851
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 852
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 392
    if-ne p0, p1, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    .line 395
    :cond_0
    if-nez p0, :cond_1

    .line 396
    const-string p0, ""

    .line 398
    :cond_1
    if-nez p1, :cond_2

    .line 399
    const-string p1, ""

    .line 401
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 788
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 797
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnExtString()[B
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/4 v12, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, -0x1

    .line 617
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildAdnExtString: recordNum is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Number is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-array v2, v13, [B

    .line 619
    .local v2, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_0

    .line 620
    aput-byte v11, v2, v5

    .line 619
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v8

    if-nez v8, :cond_2

    .line 647
    :cond_1
    :goto_1
    return-object v2

    .line 624
    :cond_2
    const/4 v0, 0x0

    .line 625
    .local v0, LEN_HAS_PLUS:I
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 626
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v11, :cond_4

    move v4, v7

    .line 627
    .local v4, hasPlus:Z
    :goto_2
    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 629
    .end local v4           #hasPlus:Z
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v0, 0x14

    if-le v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v0, 0x28

    if-gt v8, v9, :cond_1

    .line 632
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    add-int/lit8 v9, v0, 0x14

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, extNumber:Ljava/lang/String;
    aput-byte v12, v2, v6

    .line 635
    const-string v8, "GSM"

    const-string v9, "before extNumberToCalledPartyBCD"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 637
    new-array v1, v7, [B

    .line 638
    .local v1, bcdNumber:[B
    aput-byte v11, v1, v6

    .line 642
    :goto_3
    const-string v6, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after extNumberToCalledPartyBCD, bcdNumber is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    .line 644
    array-length v6, v1

    const/16 v8, 0xb

    if-ge v6, v8, :cond_6

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    :goto_4
    invoke-static {v1, v7, v2, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    const/16 v6, 0xc

    aput-byte v11, v2, v6

    .line 646
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit from buildAdnExtString, bytes is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #bcdNumber:[B
    .end local v3           #extNumber:Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 626
    goto/16 :goto_2

    .line 640
    .restart local v3       #extNumber:Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1       #bcdNumber:[B
    goto :goto_3

    .line 644
    :cond_6
    const/16 v6, 0xa

    goto :goto_4
.end method

.method public buildAdnString(I)[B
    .locals 13
    .parameter "recordSize"

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, adnString:[B
    add-int/lit8 v6, p1, -0xe

    .line 525
    .local v6, footerOffset:I
    const/4 v0, 0x0

    .line 528
    .local v0, LEN_HAS_PLUS:I
    new-array v1, p1, [B

    .line 529
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, p1, :cond_0

    .line 530
    const/4 v10, -0x1

    aput-byte v10, v1, v8

    .line 529
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 533
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 534
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v11, 0x2b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v7, 0x1

    .line 535
    .local v7, hasPlus:Z
    :goto_1
    if-eqz v7, :cond_1

    const/4 v0, 0x1

    .line 538
    .end local v7           #hasPlus:Z
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 539
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v1           #adnString:[B
    :cond_2
    :goto_2
    return-object v1

    .line 534
    .restart local v1       #adnString:[B
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 541
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v0, 0x28

    if-le v10, v11, :cond_5

    .line 543
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] Max length of dailing number is 40"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v1, 0x0

    goto :goto_2

    .line 546
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_6

    .line 547
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v1, 0x0

    goto :goto_2

    .line 551
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 552
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v0, 0x14

    if-le v10, v11, :cond_8

    .line 554
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] Max length of dailing number is 20"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v0, 0x14

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 558
    .local v2, bcdNumber:[B
    const/4 v10, 0x0

    add-int/lit8 v11, v6, 0x1

    array-length v12, v2

    invoke-static {v2, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    add-int/lit8 v10, v6, 0x0

    array-length v11, v2

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 565
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString]   extRecord = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget v10, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v11, 0xff

    if-eq v10, v11, :cond_7

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v10

    if-nez v10, :cond_7

    .line 568
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] wrong format"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 572
    :cond_7
    add-int/lit8 v10, v6, 0xd

    iget v11, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 589
    .end local v2           #bcdNumber:[B
    :goto_3
    add-int/lit8 v10, v6, 0xc

    const/4 v11, -0x1

    aput-byte v11, v1, v10

    .line 597
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 598
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/AdnRecord;->isChinese(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 599
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/AdnRecord;->encodingUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, unicodeStr:Ljava/lang/String;
    const-string v10, "80"

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 601
    .local v4, data:[B
    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 603
    .local v5, data2:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v4

    invoke-static {v4, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    const/4 v10, 0x0

    array-length v11, v4

    array-length v12, v5

    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "====>adnString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 576
    .end local v4           #data:[B
    .end local v5           #data2:[B
    .end local v9           #unicodeStr:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 578
    .restart local v2       #bcdNumber:[B
    const/4 v10, 0x0

    add-int/lit8 v11, v6, 0x1

    array-length v12, v2

    invoke-static {v2, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    add-int/lit8 v10, v6, 0x0

    array-length v11, v2

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    goto :goto_3

    .line 585
    .end local v2           #bcdNumber:[B
    :cond_9
    add-int/lit8 v10, v6, 0x0

    const/4 v11, 0x0

    aput-byte v11, v1, v10

    goto :goto_3

    .line 607
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 608
    .local v3, byteTag:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2
.end method

.method public buildAnrExtString()[B
    .locals 15

    .prologue
    const/16 v14, 0xd

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v7, 0x0

    .line 745
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildAnrExtString: anrExtNum is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-array v3, v14, [B

    .line 747
    .local v3, bytes:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v14, :cond_0

    .line 748
    aput-byte v12, v3, v6

    .line 747
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 750
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v9

    if-nez v9, :cond_2

    .line 779
    :cond_1
    :goto_1
    return-object v3

    .line 754
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v1, v9, v7

    .line 756
    .local v1, anrNumer:Ljava/lang/String;
    const/4 v0, 0x0

    .line 757
    .local v0, LEN_HAS_PLUS:I
    const/16 v9, 0x2b

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v12, :cond_4

    move v5, v8

    .line 758
    .local v5, hasPlus:Z
    :goto_2
    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 760
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v0, 0x14

    if-le v9, v10, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v0, 0x28

    if-gt v9, v10, :cond_1

    .line 763
    add-int/lit8 v9, v0, 0x14

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, extAnrNumber:Ljava/lang/String;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildAnrExtString :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", extRecord : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    aput-byte v13, v3, v7

    .line 767
    const-string v9, "GSM"

    const-string v10, "before anrExtNumberToCalledPartyBCD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 769
    new-array v2, v8, [B

    .line 770
    .local v2, bcdNumber:[B
    aput-byte v12, v2, v7

    .line 774
    :goto_3
    const-string v7, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after anrExtNumberToCalledPartyBCD, bcdNumber is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v8

    .line 776
    array-length v7, v2

    const/16 v9, 0xb

    if-ge v7, v9, :cond_6

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    :goto_4
    invoke-static {v2, v8, v3, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    const/16 v7, 0xc

    aput-byte v12, v3, v7

    .line 778
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exit from buildAnrExtString, bytes is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #bcdNumber:[B
    .end local v4           #extAnrNumber:Ljava/lang/String;
    .end local v5           #hasPlus:Z
    :cond_4
    move v5, v7

    .line 757
    goto/16 :goto_2

    .line 772
    .restart local v4       #extAnrNumber:Ljava/lang/String;
    .restart local v5       #hasPlus:Z
    :cond_5
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #bcdNumber:[B
    goto :goto_3

    .line 776
    :cond_6
    const/16 v7, 0xa

    goto :goto_4
.end method

.method public buildAnrString(I)[B
    .locals 9
    .parameter "recordSize"

    .prologue
    const/16 v8, 0xe

    const/16 v3, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 703
    new-array v0, p1, [B

    .line 704
    .local v0, anrString:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 705
    aput-byte v7, v0, v2

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    :cond_1
    const-string v3, "GSM"

    const-string v4, "[buildAnrString] Empty anr"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_1
    return-object v0

    .line 718
    :cond_2
    aput-byte v6, v0, v6

    .line 720
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 726
    .local v1, bcdNumber:[B
    const/4 v4, 0x1

    array-length v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 728
    const/4 v4, 0x2

    array-length v5, v1

    if-gt v5, v3, :cond_3

    array-length v3, v1

    :cond_3
    invoke-static {v1, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    const/16 v3, 0xd

    aput-byte v7, v0, v3

    .line 734
    aput-byte v7, v0, v8

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->toClearAnrExtendedRecord()Z

    move-result v3

    if-nez v3, :cond_4

    .line 736
    iget v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    .line 738
    :cond_4
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildAnrString :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extRecord :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public buildEmailString(I)[B
    .locals 8
    .parameter "recordSize"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 661
    add-int/lit8 v2, p1, -0x2

    .line 666
    .local v2, footerOffset:I
    new-array v1, p1, [B

    .line 667
    .local v1, emailString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 668
    aput-byte v7, v1, v3

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 672
    :cond_1
    const-string v5, "GSM"

    const-string v6, "[buildEmailString] Empty emails"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_1
    return-object v1

    .line 675
    :cond_2
    add-int/lit8 v5, v2, 0x0

    aput-byte v7, v1, v5

    .line 677
    add-int/lit8 v5, v2, 0x1

    aput-byte v7, v1, v5

    .line 680
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 681
    .local v0, byteEmail:[B
    array-length v5, v0

    if-ge v5, v2, :cond_3

    array-length v4, v0

    .line 682
    .local v4, length:I
    :goto_2
    invoke-static {v0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .end local v4           #length:I
    :cond_3
    move v4, v2

    .line 681
    goto :goto_2
.end method

.method public buildRecordName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 510
    :goto_0
    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/AdnRecord;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    goto :goto_0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AdnRecord;->encodingUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public copyPbrInfo(Lcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "adn"

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 439
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumberEmail:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberEmail:I

    .line 440
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumberAnr:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberAnr:I

    .line 441
    iget-boolean v0, p1, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 442
    iget-boolean v0, p1, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 443
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 444
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 445
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSet:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSet:I

    .line 446
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSetPosition:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSetPosition:I

    .line 447
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 448
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->efidEmail:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->efidEmail:I

    .line 449
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->efidAnr:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->efidAnr:I

    .line 450
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 451
    iget v0, p1, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrNum1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrNum2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrNum3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrTagNumberInIap()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    return v0
.end method

.method public getAnrs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    return-object v0
.end method

.method public getEfid()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEfidAnr()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efidAnr:I

    return v0
.end method

.method public getEfidEmail()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efidEmail:I

    return v0
.end method

.method public getEmailTagNumberInIap()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookSet()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSet:I

    return v0
.end method

.method public getPhonebookSetPosition()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSetPosition:I

    return v0
.end method

.method public getRecordNumberAnr()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberAnr:I

    return v0
.end method

.method public getRecordNumberEmail()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberEmail:I

    return v0
.end method

.method public hasAnrExtendedRecord()Z
    .locals 2

    .prologue
    .line 369
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrPresentInIap()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    return v0
.end method

.method public isEmailPresentInIap()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 3
    .parameter "adn"

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/AdnRecord;->isArraysEqual([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    :goto_3
    invoke-static {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->anrNum3:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setAnrExtendedRecord(I)V
    .locals 0
    .parameter "record"

    .prologue
    .line 365
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 366
    return-void
.end method

.method public setAnrPresentInIap(Z)V
    .locals 0
    .parameter "isType2"

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    .line 296
    return-void
.end method

.method public setAnrTagNumberInIap(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 311
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    .line 312
    return-void
.end method

.method public setAnrs([Ljava/lang/String;)V
    .locals 0
    .parameter "anrs"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setEfidAnr(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efidAnr:I

    .line 264
    return-void
.end method

.method public setEfidEmail(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efidEmail:I

    .line 256
    return-void
.end method

.method public setEmailPresentInIap(Z)V
    .locals 0
    .parameter "isType2"

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    .line 288
    return-void
.end method

.method public setEmailTagNumberInIap(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 303
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    .line 304
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setPhonebookSet(I)V
    .locals 0
    .parameter "set"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSet:I

    .line 272
    return-void
.end method

.method public setPhonebookSetPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSetPosition:I

    .line 280
    return-void
.end method

.method public setRecordNumberAnr(I)V
    .locals 0
    .parameter "recNum"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberAnr:I

    .line 328
    return-void
.end method

.method public setRecordNumberEmail(I)V
    .locals 0
    .parameter "recNum"

    .prologue
    .line 319
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberEmail:I

    .line 320
    return-void
.end method

.method public toClearAnrExtendedRecord()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, LEN_HAS_PLUS:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v2

    .line 377
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v4, v4, v3

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v1, v2

    .line 382
    .local v1, hasPlus:Z
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 384
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x14

    if-le v4, v5, :cond_0

    move v2, v3

    .line 387
    goto :goto_0

    .end local v1           #hasPlus:Z
    :cond_3
    move v1, v3

    .line 381
    goto :goto_1
.end method

.method public toClearExtendedRecord()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, LEN_HAS_PLUS:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v1, v3

    .line 354
    .local v1, hasPlus:Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 357
    .end local v1           #hasPlus:Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x14

    if-gt v4, v5, :cond_2

    :cond_1
    move v2, v3

    .line 361
    :cond_2
    return v2

    :cond_3
    move v1, v2

    .line 353
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADN Record \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberEmail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->efidEmail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumberAnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->efidAnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->mPhonebookSetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailPresentInIap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEmailTagNumberInIap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrPresentInIap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrTagNumberInIap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    aget-object v1, v1, v3

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 460
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 466
    return-void
.end method
