.class public Landroid/telephony/ZTEPrivacyTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "ZTEPrivacyTelephonyManager.java"


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final DEFAULT_PHONE_INFO_VALUE:Ljava/lang/String; = "Unknown"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyTelephonyManager"

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/ZTEPrivacyTelephonyManager;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Landroid/telephony/ZTEPrivacyTelephonyManager;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private enforceReadLocationPermission()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->isSecurityEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 67
    :cond_1
    iget-object v4, p0, Landroid/telephony/ZTEPrivacyTelephonyManager;->context:Landroid/content/Context;

    const-string/jumbo v5, "privacy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPrivacyManager;

    .line 68
    .local v1, sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 69
    .local v0, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 71
    .local v2, uid:I
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v4, v2}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v4, v2}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private enforceReadPhoneInfoPermission()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->isSecurityEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v3

    .line 85
    :cond_1
    iget-object v4, p0, Landroid/telephony/ZTEPrivacyTelephonyManager;->context:Landroid/content/Context;

    const-string/jumbo v5, "privacy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPrivacyManager;

    .line 86
    .local v1, sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 87
    .local v2, uid:I
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v4, v2}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, resultOfCheck:I
    if-eqz v0, :cond_0

    .line 89
    const-string v3, "Unknown"

    goto :goto_0
.end method

.method private isSecurityEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Landroid/telephony/ZTEPrivacyTelephonyManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "security_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, enabled:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates()V

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates()V

    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    .end local v0           #deviceId:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #deviceId:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/telephony/ZTEPrivacyTelephonyManager;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, subscriberId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    .end local v0           #subscriberId:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #subscriberId:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
