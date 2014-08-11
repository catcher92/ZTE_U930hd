.class public abstract Lcom/zte/privacy/IZTEPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "IZTEPrivacyManager.java"

# interfaces
.implements Lcom/zte/privacy/IZTEPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/IZTEPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.privacy.IZTEPrivacyManager"

.field static final TRANSACTION_checkCallingPermission:I = 0x2

.field static final TRANSACTION_clearPackagePermissionSetting:I = 0x5

.field static final TRANSACTION_getPackageSetting:I = 0x4

.field static final TRANSACTION_getSecurityExtentionVersion:I = 0x1

.field static final TRANSACTION_savePackageSetting:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p0, p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.zte.privacy.IZTEPrivacyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/privacy/IZTEPrivacyManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/zte/privacy/IZTEPrivacyManager;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getSecurityExtentionVersion()I

    move-result v2

    .line 51
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v2           #_result:I
    :sswitch_2
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:I
    :sswitch_3
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lcom/zte/privacy/ZTEPackagePermissionSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .line 77
    .local v0, _arg0:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    goto :goto_1

    .line 83
    .end local v0           #_arg0:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :sswitch_4
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v2

    .line 87
    .local v2, _result:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v2, p3, v3}, Lcom/zte/privacy/ZTEPackagePermissionSetting;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :sswitch_5
    const-string v4, "com.zte.privacy.IZTEPrivacyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->clearPackagePermissionSetting(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
