.class public Lcom/zte/privacy/ZTEPrivacyManager;
.super Ljava/lang/Object;
.source "ZTEPrivacyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/zte/privacy/IZTEPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/privacy/IZTEPrivacyManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    .line 42
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 2
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->clearPackagePermissionSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecurityExtentionVersion()I
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1}, Lcom/zte/privacy/IZTEPrivacyManager;->getSecurityExtentionVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v0, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method
