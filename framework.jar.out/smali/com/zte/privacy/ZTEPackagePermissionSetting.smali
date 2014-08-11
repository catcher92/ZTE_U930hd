.class public Lcom/zte/privacy/ZTEPackagePermissionSetting;
.super Ljava/lang/Object;
.source "ZTEPackagePermissionSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/privacy/ZTEPackagePermissionSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_coarse_location:I

.field public access_fine_location:I

.field public access_internet:I

.field public call_phone:I

.field public pkgName:Ljava/lang/String;

.field public read_contacts:I

.field public read_phone_state:I

.field public read_sms:I

.field public receive_mms:I

.field public receive_sms:I

.field public receive_wap_push:I

.field public send_sms:I

.field public uid:I

.field public write_contacts:I

.field public write_sms:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/zte/privacy/ZTEPackagePermissionSetting$1;

    invoke-direct {v0}, Lcom/zte/privacy/ZTEPackagePermissionSetting$1;-><init>()V

    sput-object v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/privacy/ZTEPackagePermissionSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPackagePermissionSetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
