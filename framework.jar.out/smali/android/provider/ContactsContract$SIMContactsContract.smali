.class public final Landroid/provider/ContactsContract$SIMContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIMContactsContract"
.end annotation


# static fields
.field public static final ACCOUNT_LOCAL:Ljava/lang/String; = "local@ztespecial_local.com"

.field public static final ACCOUNT_PRELOAD:Ljava/lang/String; = "preload@ztespecial_local.com"

.field public static final ACCOUNT_SIM1:Ljava/lang/String; = "sim1@ztespecial_sim.com"

.field public static final ACCOUNT_SIM2:Ljava/lang/String; = "sim2@ztespecial_sim.com"

.field public static final ACCOUNT_USIM1:Ljava/lang/String; = "usim1@ztespecial_usim.com"

.field public static final ACCOUNT_USIM2:Ljava/lang/String; = "usim2@ztespecial_usim.com"

.field public static final CARD1:I = 0x1

.field public static final CARD2:I = 0x2

.field public static final LOCAL_ACCOUNT_TYPE:Ljava/lang/String; = "ztespecial_local.com"

.field public static final PARAM_DEL_LOCAL_ONLY:Ljava/lang/String; = "del_local_only"

.field public static final PARAM_INSERT_LOCAL_ONLY:Ljava/lang/String; = "insert_local_only"

.field public static final PARAM_UPDATE_LOCAL_ONLY:Ljava/lang/String; = "update_local_only"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "ztespecial_sim.com"

.field public static final SPECIAL_ACCOUNT:Ljava/lang/String; = "ztespecial*"

.field public static final USIM_ACCOUNT_TYPE:Ljava/lang/String; = "ztespecial_usim.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSIMAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 8421
    const-string/jumbo v0, "ztespecial_sim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8423
    const/4 v0, 0x1

    .line 8426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIMOrUSIMAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 8408
    const-string/jumbo v0, "ztespecial_sim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ztespecial_usim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8412
    :cond_0
    const/4 v0, 0x1

    .line 8415
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecailAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 8394
    const-string/jumbo v0, "ztespecial_sim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ztespecial_usim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ztespecial_local.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8399
    :cond_0
    const/4 v0, 0x1

    .line 8402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUSIMAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 8432
    const-string/jumbo v0, "ztespecial_usim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8434
    const/4 v0, 0x1

    .line 8437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static whichCardBelongsTo(Ljava/lang/String;)I
    .locals 1
    .parameter "accountName"

    .prologue
    .line 8443
    const-string/jumbo v0, "sim1@ztespecial_sim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "usim1@ztespecial_usim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8444
    :cond_0
    const/4 v0, 0x1

    .line 8448
    :goto_0
    return v0

    .line 8445
    :cond_1
    const-string/jumbo v0, "sim2@ztespecial_sim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "usim2@ztespecial_usim.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8446
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 8448
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
