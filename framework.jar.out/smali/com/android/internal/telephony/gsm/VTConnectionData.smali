.class public Lcom/android/internal/telephony/gsm/VTConnectionData;
.super Ljava/lang/Object;
.source "VTConnectionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/VTConnectionData;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "VTConnectionData"


# instance fields
.field mAddress:Ljava/lang/String;

.field mCreateTime:J

.field mIsIncoming:Z

.field mNumberPresentation:I

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/internal/telephony/gsm/VTConnectionData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VTConnectionData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/VTConnectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mAddress:Ljava/lang/String;

    .line 60
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 61
    .local v0, val:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 62
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mIsIncoming:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mCreateTime:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJI)V
    .locals 1
    .parameter "address"
    .parameter "isIncoming"
    .parameter "createTime"
    .parameter "numberPresentation"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mAddress:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mIsIncoming:Z

    .line 53
    iput-wide p3, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mCreateTime:J

    .line 54
    iput p5, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mCreateTime:J

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mIsIncoming:Z

    return v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "userdata"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->userData:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 74
    .local v0, val:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mIsIncoming:Z

    aput-boolean v2, v0, v1

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 77
    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mCreateTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget v1, p0, Lcom/android/internal/telephony/gsm/VTConnectionData;->mNumberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
