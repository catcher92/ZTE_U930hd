.class public Lcom/android/phone/VideoCallBarringOptions;
.super Landroid/preference/PreferenceActivity;
.source "VideoCallBarringOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final BAR_DIALOG_TITLE:[I

.field private static final CB_FACILITY:[Ljava/lang/String;

.field private static bCheckboxStatus:[Z


# instance fields
.field private bActiveStatus:Z

.field private bInited:Z

.field private barDialog:Landroid/app/Dialog;

.field private isFirst:Z

.field private mAIBtn:Landroid/preference/CheckBoxPreference;

.field private mAOBtn:Landroid/preference/CheckBoxPreference;

.field private mButtonAllBarring:Landroid/preference/Preference;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mFacilityIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mIRBtn:Landroid/preference/CheckBoxPreference;

.field private mNewPin:Ljava/lang/String;

.field private mOIBtn:Landroid/preference/CheckBoxPreference;

.field private mOXBtn:Landroid/preference/CheckBoxPreference;

.field private mOldPin:Ljava/lang/String;

.field private mPasswdView:Landroid/widget/EditText;

.field private mPassword:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/phone/EditPinPreference;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/VideoCallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    .line 124
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    .line 128
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/VideoCallBarringOptions;->BAR_DIALOG_TITLE:[I

    return-void

    .line 124
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 128
    :array_1
    .array-data 0x4
        0x9et 0x2t 0xct 0x7ft
        0xc0t 0x2t 0xct 0x7ft
        0xc1t 0x2t 0xct 0x7ft
        0xbft 0x2t 0xct 0x7ft
        0x9et 0x2t 0xct 0x7ft
        0xc3t 0x2t 0xct 0x7ft
        0xc2t 0x2t 0xct 0x7ft
        0x9et 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallBarringOptions;->isFirst:Z

    .line 139
    iput v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 140
    iput-boolean v1, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    .line 141
    iput v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 487
    new-instance v0, Lcom/android/phone/VideoCallBarringOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallBarringOptions$3;-><init>(Lcom/android/phone/VideoCallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VideoCallBarringOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/VideoCallBarringOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/VideoCallBarringOptions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VideoCallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->handleGetFacilityLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VideoCallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->handleSetFacilityLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/VideoCallBarringOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/VideoCallBarringOptions;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/VideoCallBarringOptions;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/VideoCallBarringOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/VideoCallBarringOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/VideoCallBarringOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/VideoCallBarringOptions;->bActiveStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/VideoCallBarringOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/VideoCallBarringOptions;->bActiveStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/VideoCallBarringOptions;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->modeOfFacility(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/VideoCallBarringOptions;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallBarringOptions;->setFacilityLockToCard(IZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/VideoCallBarringOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/VideoCallBarringOptions;->isFirst:Z

    return p1
.end method

.method private checkFacilityLockStatus([I)Z
    .locals 3
    .parameter "ints"

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, result:Z
    array-length v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 528
    const/4 v0, 0x1

    .line 531
    :cond_0
    return v0
.end method

.method private createPasswordDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 416
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, view:Landroid/view/View;
    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    .line 419
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 420
    const-string v1, "VideoCallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### createPasswordDialog......, BAR_DIALOG_TITLE["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v4, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/VideoCallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02b2

    new-instance v3, Lcom/android/phone/VideoCallBarringOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/VideoCallBarringOptions$2;-><init>(Lcom/android/phone/VideoCallBarringOptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002f

    new-instance v3, Lcom/android/phone/VideoCallBarringOptions$1;

    invoke-direct {v3, p0}, Lcom/android/phone/VideoCallBarringOptions$1;-><init>(Lcom/android/phone/VideoCallBarringOptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getFacilityLockFromCard(I)V
    .locals 6
    .parameter "nFacility"

    .prologue
    const/4 v5, 0x0

    .line 471
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VideoCallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 476
    return-void
.end method

.method private handleGetFacilityLockResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 535
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 536
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 537
    iget-boolean v3, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    if-eq v3, v8, :cond_0

    .line 538
    invoke-virtual {p0, v5}, Lcom/android/phone/VideoCallBarringOptions;->dismissDialog(I)V

    .line 539
    iput-boolean v8, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    .line 541
    :cond_0
    const-string v3, "VideoCallBarringOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query wrong item= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const v3, 0x7f0c028d

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 543
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->finish()V

    .line 657
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 548
    .local v2, nFacility:I
    iget-boolean v3, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    if-eq v3, v8, :cond_1

    .line 550
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 552
    .local v1, ints:[I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 607
    :pswitch_1
    const-string v3, "#### --- Get ----  OI"

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v8, :cond_6

    .line 609
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v8

    .line 610
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 611
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 612
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 613
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 615
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 616
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallBarringOptions;->mDismissDialog(I)V

    .line 617
    iput-boolean v8, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    goto :goto_0

    .line 554
    :pswitch_2
    const-string v3, "#### --- Get ----  AI"

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v8, :cond_3

    .line 557
    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 558
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    .line 559
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 560
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 561
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 562
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 565
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aput-boolean v9, v3, v4

    .line 566
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 567
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 571
    :pswitch_3
    const-string v3, "#### --- Get ----  IR"

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 573
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v8, :cond_4

    .line 574
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v4

    .line 575
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 576
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 577
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 580
    :cond_4
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v9, v3, v4

    .line 581
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 582
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 586
    :pswitch_4
    const-string v3, "#### --- Get ----  AO"

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v8, :cond_5

    .line 588
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v6

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### --- ===>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 591
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 592
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 594
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 595
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 596
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallBarringOptions;->mDismissDialog(I)V

    .line 597
    iput-boolean v8, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    goto/16 :goto_0

    .line 599
    :cond_5
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v9, v3, v6

    .line 600
    invoke-direct {p0, v8}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 601
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 602
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 603
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 619
    :cond_6
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v9, v3, v8

    .line 620
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 621
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 622
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 623
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 628
    :pswitch_5
    const-string v3, "#### --- Get ----  OX"

    invoke-static {v3}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v8, :cond_7

    .line 630
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v5

    .line 631
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 632
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 633
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 634
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 635
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 636
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallBarringOptions;->mDismissDialog(I)V

    .line 644
    iput-boolean v8, p0, Lcom/android/phone/VideoCallBarringOptions;->bInited:Z

    goto/16 :goto_0

    .line 638
    :cond_7
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v9, v3, v5

    .line 639
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 640
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 641
    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleSetFacilityLockResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 661
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "####  handleSetFacilityLockResponse ..."

    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####  ar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 663
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 664
    const v1, 0x7f0c028d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->updateCallBarringStatus(I)V

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 512
    if-nez p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 522
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->resetDialogState()V

    .line 523
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initCheckboxStatus(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 851
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 852
    sget-object v1, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ initCheckboxStatus  Checkbox["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    return-void
.end method

.method private static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 789
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 847
    const-string v0, "VideoCallBarringOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method private mCheckBoxInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 811
    const-string v0, "$$$$ mCheckBoxInit..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const-string v0, "$$$$ mAOBtn  on ..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 838
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 839
    const-string v0, "$$$$ mAIBtn  on ..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 845
    :cond_1
    :goto_1
    return-void

    .line 819
    :cond_2
    const-string v0, "$$$$ mAOBtn  off ..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 822
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 830
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private mDismissDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 794
    const-string v0, "$$$$ mDismissDialog...."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 797
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/VideoCallBarringOptions;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private modeOfFacility(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 770
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 771
    :cond_0
    const/4 v0, 0x0

    .line 773
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 779
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 780
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    .line 781
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->setDialogValues()V

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 783
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0c0297

    .line 225
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 226
    const-string v0, ""

    .line 227
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFacilityLockToCard(IZ)V
    .locals 7
    .parameter "nFacility"
    .parameter "bValue"

    .prologue
    .line 479
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VideoCallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mPassword:Ljava/lang/String;

    const/16 v4, 0x10

    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 485
    return-void
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->setDialogValues()V

    .line 254
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 5

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 260
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v2, "AB"

    iget-object v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mOldPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VideoCallBarringOptions;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 262
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto :goto_0
.end method

.method private updateCallBarringStatus(I)V
    .locals 4
    .parameter "facilityIndex"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####  updateCallBarringStatus ... = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 673
    if-gez p1, :cond_1

    .line 674
    const v0, 0x7f0c028d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    if-ne p1, v2, :cond_3

    .line 678
    const-string v0, "####  facilityIndex == 1..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 691
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 693
    const-string v0, "####  facilityIndex == 2..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 706
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 708
    const-string v0, "####  facilityIndex == 3..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 710
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 721
    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 723
    const-string v0, "####  facilityIndex == 5 ..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 725
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 728
    :cond_8
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 733
    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 734
    const-string v0, "####  facilityIndex == 6 ..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 737
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 740
    :cond_a
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 745
    :cond_b
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 746
    const-string v0, "$$$$ barring all......"

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 758
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallBarringOptions;->initCheckboxStatus(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Lcom/android/phone/VideoCallBarringOptions;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->finish()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    .line 154
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->getFacilityLockFromCard(I)V

    .line 155
    const v2, 0x7f050018

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 158
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "vt_button_ao_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    .line 159
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v2, "vt_button_oi_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    const-string v2, "vt_button_ox_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v2, "vt_button_ai_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v2, "vt_button_ir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v2, "all_barring"

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    .line 176
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string v2, "callbarring_passwd"

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallBarringOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    .line 179
    if-eqz p1, :cond_2

    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 182
    const-string v2, "dialogError"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 189
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 191
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 387
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 396
    :goto_0
    return-object v0

    .line 389
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->createPasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 391
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/VideoCallBarringOptions;->isFirst:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0292

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 859
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 860
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 861
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 862
    const/4 v1, 0x1

    .line 864
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 267
    if-nez p2, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->resetDialogState()V

    .line 305
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallBarringOptions;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 279
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOldPin:Ljava/lang/String;

    .line 282
    iput v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 283
    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 284
    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mNewPin:Ljava/lang/String;

    .line 289
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 290
    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0299

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 296
    iput v3, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 297
    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mPin:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 300
    :cond_2
    iput-object v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->tryChangePin()V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    if-ne p2, v0, :cond_2

    .line 310
    iput v4, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    .line 344
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 345
    const-string v0, "$$$$ AI..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 348
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v4

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[6]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    .line 364
    :cond_1
    :goto_2
    return v2

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 313
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 316
    const-string v0, "$$$$ AO..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 319
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[3]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 322
    iput v5, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 323
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 319
    goto :goto_3

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 325
    const-string v0, "$$$$ OI..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 328
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    aput-boolean v0, v3, v1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[1]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 331
    iput v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 328
    goto :goto_4

    .line 333
    :cond_7
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 334
    const-string v0, "$$$$ OX......"

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 337
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    aput-boolean v0, v3, v4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[2]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 340
    iput v4, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 337
    goto :goto_5

    :cond_9
    move v0, v2

    .line 348
    goto/16 :goto_1

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 354
    const-string v0, "$$$$ IR..."

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 357
    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    aput-boolean v0, v3, v6

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[5]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/VideoCallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 360
    iput v6, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallBarringOptions;->showDialog(I)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 357
    goto :goto_6
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 408
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### onPrepareDialog  , id ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VideoCallBarringOptions;->log(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->barDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->barDialog:Landroid/app/Dialog;

    sget-object v1, Lcom/android/phone/VideoCallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v2, p0, Lcom/android/phone/VideoCallBarringOptions;->mFacilityIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 413
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->showPinDialog()V

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->mCheckBoxInit()V

    .line 206
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallBarringOptions;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/VideoCallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/phone/VideoCallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
