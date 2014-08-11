.class public Lcom/android/phone/SimContactsService$CardRecord;
.super Ljava/lang/Object;
.source "SimContactsService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardRecord"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/SimContactsService$CardRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrNum1:Ljava/lang/String;

.field anrNum2:Ljava/lang/String;

.field anrNum3:Ljava/lang/String;

.field anrs:[Ljava/lang/String;

.field emails:[Ljava/lang/String;

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/SimContactsService;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContactsService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anrNum1"
    .parameter "anrNum2"
    .parameter "anrNum3"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/phone/SimContactsService$CardRecord;->this$0:Lcom/android/phone/SimContactsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/android/phone/SimContactsService$CardRecord$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimContactsService$CardRecord$1;-><init>(Lcom/android/phone/SimContactsService$CardRecord;)V

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 270
    iput-object p2, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    .line 271
    iput-object p3, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    .line 272
    iput-object p4, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    .line 273
    iput-object p5, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    .line 274
    iput-object p6, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    .line 275
    iput-object p7, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/SimContactsService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/SimContactsService$CardRecord;->this$0:Lcom/android/phone/SimContactsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/android/phone/SimContactsService$CardRecord$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimContactsService$CardRecord$1;-><init>(Lcom/android/phone/SimContactsService$CardRecord;)V

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 260
    iput-object p2, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    .line 262
    iput-object p4, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    .line 263
    iput-object p5, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrs:[Ljava/lang/String;

    .line 264
    return-void
.end method

.method private isArraysEqual([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
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

    .line 300
    :cond_2
    :goto_0
    return v1

    .line 288
    :cond_3
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_2

    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 290
    aget-object v3, p1, v0

    if-nez v3, :cond_4

    .line 291
    const-string v3, ""

    aput-object v3, p1, v0

    .line 293
    :cond_4
    aget-object v3, p2, v0

    if-nez v3, :cond_5

    .line 294
    const-string v3, ""

    aput-object v3, p2, v0

    .line 296
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

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 300
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getAnrNum1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAnrNum2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAnrNum3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 335
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEqual(Lcom/android/phone/SimContactsService$CardRecord;)Z
    .locals 2
    .parameter "record"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SimContactsService$CardRecord;->isArraysEqual([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getAnrNum1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getAnrNum2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/SimContactsService$CardRecord;->getAnrNum3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card Record:\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrs:[Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrs:[Ljava/lang/String;

    aget-object v1, v1, v3

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/SimContactsService$CardRecord;->anrs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    return-void
.end method
