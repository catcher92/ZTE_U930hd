.class public Lcom/android/internal/telephony/PreferredPlmnInfo;
.super Ljava/lang/Object;
.source "PreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/PreferredPlmnInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:I

.field gsmAct:I

.field gsmCompactAct:I

.field index:I

.field oper:Ljava/lang/String;

.field utranAct:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/PreferredPlmnInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PreferredPlmnInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PreferredPlmnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;III)V
    .locals 1
    .parameter "index"
    .parameter "Format"
    .parameter "oper"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->index:I

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->format:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->utranAct:I

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->index:I

    .line 76
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->format:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->format:I

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    .line 78
    iput p4, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 79
    iput p5, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 80
    iput p6, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->utranAct:I

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->format:I

    return v0
.end method

.method public getGsmAct()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmAct:I

    return v0
.end method

.method public getGsmCompactAct()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->index:I

    return v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranAct()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->utranAct:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/PreferredPlmnInfo;->utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
