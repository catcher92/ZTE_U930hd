.class public Landroid/telephony/IccCardInfo;
.super Ljava/lang/Object;
.source "IccCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/IccCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICC_CARD_INFO_ID_EMAIL_SIZE:I = 0x4

.field public static final ICC_CARD_INFO_ID_NAME_SIZE:I = 0x2

.field public static final ICC_CARD_INFO_ID_NUM_SIZE:I = 0x3

.field public static final ICC_CARD_INFO_ID_TOTAL_NUM:I = 0x0

.field public static final ICC_CARD_INFO_ID_USED_NUM:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "IccCardInfo"


# instance fields
.field private mEmailMaxSize:I

.field private mNameMaxSize:I

.field private mNumberMaxSize:I

.field private mTotalRecordNum:I

.field private mUsedRecordNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/telephony/IccCardInfo$1;

    invoke-direct {v0}, Landroid/telephony/IccCardInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/IccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 52
    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 53
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 54
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 55
    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 52
    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 53
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 54
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 55
    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/telephony/IccCardInfo;)V
    .locals 1
    .parameter "ici"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 52
    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 53
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 54
    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 55
    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 68
    invoke-virtual {p0, p1}, Landroid/telephony/IccCardInfo;->copyFrom(Landroid/telephony/IccCardInfo;)V

    .line 69
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 227
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/IccCardInfo;
    .locals 1
    .parameter "m"

    .prologue
    .line 59
    new-instance v0, Landroid/telephony/IccCardInfo;

    invoke-direct {v0}, Landroid/telephony/IccCardInfo;-><init>()V

    .line 60
    .local v0, ret:Landroid/telephony/IccCardInfo;
    invoke-direct {v0, p0}, Landroid/telephony/IccCardInfo;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 235
    const-string v0, "TotalRecordNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 236
    const-string v0, "UsedRecordNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 237
    const-string v0, "NameMaxSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 238
    const-string v0, "NumberMaxSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 239
    const-string v0, "EmailMaxSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 240
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/IccCardInfo;)V
    .locals 1
    .parameter "ici"

    .prologue
    .line 72
    iget v0, p1, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    iput v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 73
    iget v0, p1, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    iput v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 74
    iget v0, p1, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 75
    iget v0, p1, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    iput v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 76
    iget v0, p1, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    iput v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 77
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 159
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/IccCardInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v2, ici:Landroid/telephony/IccCardInfo;
    if-nez p1, :cond_1

    .line 168
    .end local v2           #ici:Landroid/telephony/IccCardInfo;
    :cond_0
    :goto_0
    return v3

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 168
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #ici:Landroid/telephony/IccCardInfo;
    :cond_1
    iget v4, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/IccCardInfo;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/IccCardInfo;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/IccCardInfo;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/IccCardInfo;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/IccCardInfo;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 247
    const-string v0, "TotalRecordNum"

    iget v1, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v0, "UsedRecordNum"

    iget v1, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v0, "NameMaxSize"

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v0, "NumberMaxSize"

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "EmailMaxSize"

    iget v1, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    return-void
.end method

.method public getEmailMaxSize()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    return v0
.end method

.method public getNameMaxSize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    return v0
.end method

.method public getNumberMaxSize()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    return v0
.end method

.method public getTotalRecordNum()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    return v0
.end method

.method public getUsedRecordNum()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    iget v1, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setEmailMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 216
    iput p1, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    .line 217
    return-void
.end method

.method public setNameMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 202
    iput p1, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    .line 203
    return-void
.end method

.method public setNumberMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 209
    iput p1, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    .line 210
    return-void
.end method

.method public setTotalRecordNum(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 188
    iput p1, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    .line 189
    return-void
.end method

.method public setUsedRecordNum(I)V
    .locals 0
    .parameter "used"

    .prologue
    .line 195
    iput p1, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTotalRecordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUsedRecordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNameMaxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumberMaxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailMaxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 88
    iget v0, p0, Landroid/telephony/IccCardInfo;->mTotalRecordNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/telephony/IccCardInfo;->mUsedRecordNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/telephony/IccCardInfo;->mNameMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/telephony/IccCardInfo;->mNumberMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/telephony/IccCardInfo;->mEmailMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
