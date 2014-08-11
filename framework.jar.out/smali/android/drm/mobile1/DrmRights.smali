.class public Landroid/drm/mobile1/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# static fields
.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final JNI_DRM_FAILURE:I = -0x1

.field private static final JNI_DRM_SUCCESS:I


# instance fields
.field private displayPermission:Landroid/drm/mobile1/DrmConstraintInfo;

.field private executePermission:Landroid/drm/mobile1/DrmConstraintInfo;

.field private playPermission:Landroid/drm/mobile1/DrmConstraintInfo;

.field private printPermission:Landroid/drm/mobile1/DrmConstraintInfo;

.field private roId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    :try_start_0
    const-string v1, "drm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 160
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 161
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm1_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->playPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 68
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->displayPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 69
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->executePermission:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 70
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->printPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 71
    return-void
.end method

.method private native nativeConsumeRights(I)I
.end method

.method private native nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I
.end method


# virtual methods
.method public consumeRights(I)Z
    .locals 2
    .parameter "permission"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/drm/mobile1/DrmRights;->nativeConsumeRights(I)I

    move-result v0

    .line 124
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 3
    .parameter "permission"

    .prologue
    .line 101
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    .line 104
    .local v0, c:Landroid/drm/mobile1/DrmConstraintInfo;
    invoke-direct {p0, p1, v0}, Landroid/drm/mobile1/DrmRights;->nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I

    move-result v1

    .line 106
    .local v1, res:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    .end local v0           #c:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_0
    return-object v0
.end method

.method public getDisplayPermission()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->displayPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getExecutePermission()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->executePermission:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getPlayPermission()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->playPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getPrintPermission()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->printPermission:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getRoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    return-object v0
.end method
