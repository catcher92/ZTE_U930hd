.class public Lcom/leadcore/dmext/LockAPI;
.super Ljava/lang/Object;
.source "LockAPI.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LC_DM_Lock_Ua"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "DmExtJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getLockFlag()I
.end method

.method public static getLockStatus()I
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/leadcore/dmext/LockAPI;->getLockFlag()I

    move-result v0

    .line 28
    .local v0, status:I
    return v0
.end method

.method private static native setLockFlag(I)I
.end method

.method public static setLockStatus(I)I
    .locals 1
    .parameter "opt"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/leadcore/dmext/LockAPI;->setLockFlag(I)I

    move-result v0

    .line 42
    .local v0, ret:I
    return v0
.end method
