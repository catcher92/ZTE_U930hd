.class public Lcom/android/phone/PhoneRestrictSetting;
.super Landroid/preference/PreferenceActivity;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;,
        Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;,
        Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    }
.end annotation


# static fields
.field public static CurrentCallState:I


# instance fields
.field private mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

.field private mClickedUnit:Lcom/android/phone/FacilityLockCmd;

.field private mConnector:Lcom/android/phone/RilConnector;

.field private mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

.field private mHasExceptions:Z

.field private mIsQuerrying:Z

.field private mIsShowingDialog:Z

.field private mNetworkPassWord:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQuerryUnitIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    .line 78
    iput v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    .line 86
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsShowingDialog:Z

    .line 91
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$1;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mConnector:Lcom/android/phone/RilConnector;

    .line 128
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$2;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneRestrictSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneRestrictSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneRestrictSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneRestrictSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/FacilityLockCmd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    return-object v0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V
    .locals 2
    .parameter "unit"
    .parameter "isCheckBox"
    .parameter "group"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0, p1}, Lcom/android/phone/RilConnector;->AddRilUnit(Lcom/android/phone/RilUnit;)V

    .line 382
    if-eqz p2, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    if-eqz p3, :cond_1

    .line 389
    check-cast p1, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .end local p1
    invoke-virtual {p3, p1}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->AddUnit(Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;)V

    .line 391
    :cond_1
    return-void
.end method

.method CreateErrorDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c032f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0334

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032d

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$8;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$8;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreateExecuteSuccessDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0338

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0330

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032d

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$6;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreatePasswordSetDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 678
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 679
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c0336

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 681
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 682
    const v1, 0x7f0c0337

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 683
    return-object v0
.end method

.method CreateRetryDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const v0, 0x7f0c0331

    .line 636
    .local v0, showID:I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c032d

    new-instance v3, Lcom/android/phone/PhoneRestrictSetting$7;

    invoke-direct {v3, p0}, Lcom/android/phone/PhoneRestrictSetting$7;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 633
    .end local v0           #showID:I
    :cond_0
    const v0, 0x7f0c0332

    .restart local v0       #showID:I
    goto :goto_0
.end method

.method CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"
    .parameter "reponsor"

    .prologue
    .line 593
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0338

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032d

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032e

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$5;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreateWaitDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c0336

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 586
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 587
    const v1, 0x7f0c0337

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    return-object v0
.end method

.method DismissMyDialog(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting;->dismissDialog(I)V

    .line 451
    return-void
.end method

.method GetSetNewPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 720
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$11;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$11;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetSetOldPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 707
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$10;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$10;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetSetPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$9;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetUnitByKeyStr(Ljava/lang/String;)Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    .locals 5
    .parameter "key"

    .prologue
    .line 364
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 366
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 368
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .line 369
    .local v2, unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    invoke-virtual {v2}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :goto_1
    return-object v2

    .line 366
    .restart local v2       #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_1
    const-string v3, "PhoneRestrictSetting"

    const-string v4, "GetUnitByKeyStr Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v2, 0x0

    goto :goto_1
.end method

.method InitBarryUnits()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    .line 423
    new-instance v7, Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    invoke-direct {v7, p0}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    .line 424
    .local v7, outGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    new-instance v6, Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    invoke-direct {v6, p0}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    .line 433
    .local v6, inGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_alloutgoing"

    const-string v4, "AO"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 434
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_outgoinginter"

    const-string v4, "OI"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 435
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_outgoingroaming"

    const-string v4, "OX"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 436
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_allincoming"

    const-string v4, "AI"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v6}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 437
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_incomeroaming"

    const-string v4, "IR"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v6}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitDeactiveAll()V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitChangePassword()V

    .line 441
    return-void
.end method

.method InitChangePassword()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    .line 417
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 418
    return-void
.end method

.method InitDeactiveAll()V
    .locals 4

    .prologue
    .line 395
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$3;

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AB"

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/PhoneRestrictSetting$3;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    .line 411
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 412
    return-void
.end method

.method IsQuerryOver()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 358
    iget-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method OnExecuteException()V
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    if-nez v0, :cond_0

    .line 351
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    .line 354
    :cond_0
    return-void
.end method

.method QuerryRecord()V
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Get()Z

    .line 470
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    goto :goto_0
.end method

.method ShowMyDialog(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting;->showDialog(I)V

    .line 446
    return-void
.end method

.method StartQuerry()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "StartQuerry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    if-nez v0, :cond_0

    .line 458
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "Second Enter here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->QuerryRecord()V

    .line 463
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0
.end method

.method protected cancellSet()V
    .locals 1

    .prologue
    .line 526
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->timer:Ljava/util/Timer;

    .line 529
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/16 v4, 0x78

    .line 507
    const-string v1, "PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 510
    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneRestrictSetting;->removeDialog(I)V

    .line 511
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 512
    .local v0, extras:Landroid/os/Bundle;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const-string v2, "old"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetOldPassword(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const-string v2, "new"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNewPassword(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->Set()Z

    .line 516
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->timer:Ljava/util/Timer;

    .line 517
    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 518
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$4;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 511
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    const-string v1, "PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 538
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneRestrictSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "call_status"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    .line 543
    sget v1, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-nez v1, :cond_2

    .line 544
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->addPreferencesFromResource(I)V

    .line 550
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 551
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 564
    :goto_1
    return-void

    .line 545
    :cond_2
    sget v1, Lcom/android/phone/PhoneRestrictSetting;->CurrentCallState:I

    if-ne v1, v5, :cond_0

    .line 546
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 558
    :cond_3
    const-string v1, "PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate this =mPhone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    .line 560
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitBarryUnits()V

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->StartQuerry()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 734
    const/16 v0, 0x71

    if-ne p1, v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateWaitDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    .line 738
    :cond_0
    const/16 v0, 0x74

    if-ne p1, v0, :cond_1

    .line 740
    const v0, 0x7f0c0339

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_1
    const/16 v0, 0x75

    if-ne p1, v0, :cond_2

    .line 744
    const v0, 0x7f0c032a

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetOldPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 746
    :cond_2
    const/16 v0, 0x76

    if-ne p1, v0, :cond_3

    .line 748
    const v0, 0x7f0c032b

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetNewPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 750
    :cond_3
    const/16 v0, 0x73

    if-ne p1, v0, :cond_4

    .line 752
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateExecuteSuccessDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_4
    const/16 v0, 0x72

    if-ne p1, v0, :cond_5

    .line 756
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateRetryDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_5
    const/16 v0, 0x77

    if-ne p1, v0, :cond_6

    .line 761
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateErrorDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_6
    const/16 v0, 0x78

    if-ne p1, v0, :cond_7

    .line 765
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreatePasswordSetDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 577
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 578
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 475
    const-string v1, "barry_changepassword"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 478
    const-class v2, Lcom/android/phone/GetPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 479
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 496
    :goto_0
    return v0

    .line 482
    :cond_0
    const-string v1, "barry_cancelall"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    .line 493
    :goto_1
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->GetUnitByKeyStr(Ljava/lang/String;)Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->OnClick()V

    .line 490
    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    goto :goto_1

    .line 494
    :cond_2
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 570
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    .line 572
    return-void
.end method
