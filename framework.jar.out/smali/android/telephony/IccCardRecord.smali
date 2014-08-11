.class public Landroid/telephony/IccCardRecord;
.super Ljava/lang/Object;
.source "IccCardRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/IccCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "IccCardRecord"


# instance fields
.field private mDcs:I

.field private mEmail:Ljava/lang/String;

.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mNum1:Ljava/lang/String;

.field private mNum2:Ljava/lang/String;

.field private mNum3:Ljava/lang/String;

.field private mNum4:Ljava/lang/String;

.field private mType1:I

.field private mType2:I

.field private mType3:I

.field private mType4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Landroid/telephony/IccCardRecord$1;

    invoke-direct {v0}, Landroid/telephony/IccCardRecord$1;-><init>()V

    sput-object v0, Landroid/telephony/IccCardRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 41
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 42
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 43
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 44
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 45
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 46
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 47
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 48
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 49
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 50
    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 51
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 41
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 42
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 43
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 44
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 45
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 46
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 47
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 48
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 49
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 50
    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 51
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/telephony/IccCardRecord;)V
    .locals 2
    .parameter "icr"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 41
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 42
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 43
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 44
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 45
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 46
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 47
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 48
    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 49
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 50
    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 51
    iput-object v1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/IccCardRecord;->copyFrom(Landroid/telephony/IccCardRecord;)V

    .line 65
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 319
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

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/IccCardRecord;
    .locals 1
    .parameter "m"

    .prologue
    .line 55
    new-instance v0, Landroid/telephony/IccCardRecord;

    invoke-direct {v0}, Landroid/telephony/IccCardRecord;-><init>()V

    .line 56
    .local v0, ret:Landroid/telephony/IccCardRecord;
    invoke-direct {v0, p0}, Landroid/telephony/IccCardRecord;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 327
    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 328
    const-string/jumbo v0, "num1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "type1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 330
    const-string/jumbo v0, "num2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 331
    const-string/jumbo v0, "type2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 332
    const-string/jumbo v0, "num3"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "type3"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 334
    const-string/jumbo v0, "num4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 335
    const-string/jumbo v0, "type4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 336
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 337
    const-string v0, "dcs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 338
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 339
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/IccCardRecord;)V
    .locals 1
    .parameter "icr"

    .prologue
    .line 68
    iget v0, p1, Landroid/telephony/IccCardRecord;->mIndex:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 69
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 70
    iget v0, p1, Landroid/telephony/IccCardRecord;->mType1:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 71
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 72
    iget v0, p1, Landroid/telephony/IccCardRecord;->mType2:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 73
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 74
    iget v0, p1, Landroid/telephony/IccCardRecord;->mType3:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 75
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 76
    iget v0, p1, Landroid/telephony/IccCardRecord;->mType4:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 77
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 78
    iget v0, p1, Landroid/telephony/IccCardRecord;->mDcs:I

    iput v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 79
    iget-object v0, p1, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 346
    const-string v0, "index"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string/jumbo v0, "num1"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "type1"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType1:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string/jumbo v0, "num2"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "type2"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType2:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string/jumbo v0, "num3"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v0, "type3"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType3:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string/jumbo v0, "num4"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v0, "type4"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType4:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "dcs"

    iget v1, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string v0, "email"

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public getDcs()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNum1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    return-object v0
.end method

.method public getNum2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    return-object v0
.end method

.method public getNum3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    return-object v0
.end method

.method public getNum4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    return-object v0
.end method

.method public getType1()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    return v0
.end method

.method public getType2()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    return v0
.end method

.method public getType3()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    return v0
.end method

.method public getType4()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    return v0
.end method

.method public setDcs(I)V
    .locals 0
    .parameter "dcs"

    .prologue
    .line 301
    iput p1, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    .line 302
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 308
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 231
    iput p1, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    .line 232
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 294
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setNum1(Ljava/lang/String;)V
    .locals 0
    .parameter "num1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setNum2(Ljava/lang/String;)V
    .locals 0
    .parameter "num2"

    .prologue
    .line 252
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setNum3(Ljava/lang/String;)V
    .locals 0
    .parameter "num3"

    .prologue
    .line 266
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setNum4(Ljava/lang/String;)V
    .locals 0
    .parameter "num4"

    .prologue
    .line 280
    iput-object p1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setType1(I)V
    .locals 0
    .parameter "type1"

    .prologue
    .line 245
    iput p1, p0, Landroid/telephony/IccCardRecord;->mType1:I

    .line 246
    return-void
.end method

.method public setType2(I)V
    .locals 0
    .parameter "type2"

    .prologue
    .line 259
    iput p1, p0, Landroid/telephony/IccCardRecord;->mType2:I

    .line 260
    return-void
.end method

.method public setType3(I)V
    .locals 0
    .parameter "type3"

    .prologue
    .line 273
    iput p1, p0, Landroid/telephony/IccCardRecord;->mType3:I

    .line 274
    return-void
.end method

.method public setType4(I)V
    .locals 0
    .parameter "type4"

    .prologue
    .line 287
    iput p1, p0, Landroid/telephony/IccCardRecord;->mType4:I

    .line 288
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNum1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNum2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNum3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNum4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mType4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDcs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 98
    iget v0, p0, Landroid/telephony/IccCardRecord;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mNum4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Landroid/telephony/IccCardRecord;->mType4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Landroid/telephony/IccCardRecord;->mDcs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/telephony/IccCardRecord;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
