.class public Lcom/android/phone/CallBarringOptions;
.super Landroid/preference/PreferenceActivity;
.source "CallBarringOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final BAR_DIALOG_TITLE:[I

.field private static final CB_FACILITY:[Ljava/lang/String;

.field private static bCheckboxStatus:[Z


# instance fields
.field private final DBG:Z

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

    .line 83
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

    sput-object v0, Lcom/android/phone/CallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    .line 125
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    .line 129
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/CallBarringOptions;->BAR_DIALOG_TITLE:[I

    return-void

    .line 125
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

    .line 129
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/android/phone/CallBarringOptions;->DBG:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/phone/CallBarringOptions;->isFirst:Z

    .line 140
    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 141
    iput-boolean v0, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    .line 142
    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 498
    new-instance v0, Lcom/android/phone/CallBarringOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallBarringOptions$3;-><init>(Lcom/android/phone/CallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallBarringOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallBarringOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CallBarringOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallBarringOptions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->handleGetFacilityLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->handleSetFacilityLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallBarringOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallBarringOptions;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallBarringOptions;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallBarringOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallBarringOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallBarringOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/CallBarringOptions;->bActiveStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallBarringOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/CallBarringOptions;->bActiveStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/CallBarringOptions;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringOptions;->modeOfFacility(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallBarringOptions;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallBarringOptions;->setFacilityLockToCard(IZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/CallBarringOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/CallBarringOptions;->isFirst:Z

    return p1
.end method

.method private checkFacilityLockStatus([I)Z
    .locals 3
    .parameter "ints"

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, result:Z
    array-length v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 542
    const/4 v0, 0x1

    .line 545
    :cond_0
    return v0
.end method

.method private createPasswordDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 419
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, view:Landroid/view/View;
    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    .line 422
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPasswdView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 423
    const-string v1, "CallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### createPasswordDialog......, BAR_DIALOG_TITLE["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v4, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v3, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02b2

    new-instance v3, Lcom/android/phone/CallBarringOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallBarringOptions$2;-><init>(Lcom/android/phone/CallBarringOptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002f

    new-instance v3, Lcom/android/phone/CallBarringOptions$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallBarringOptions$1;-><init>(Lcom/android/phone/CallBarringOptions;)V

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

    .line 473
    const-string v0, "CallBarringOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### getFacilityLockFromCard,   nFacility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 480
    return-void
.end method

.method private handleGetFacilityLockResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 551
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 552
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 553
    iget-boolean v3, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    if-eq v3, v7, :cond_0

    .line 554
    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V

    .line 555
    iput-boolean v7, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    .line 557
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query wrong item= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 558
    const v3, 0x7f0c028d

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 559
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->finish()V

    .line 675
    :cond_1
    :goto_0
    return-void

    .line 563
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 564
    .local v2, nFacility:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### - Get -  nFacility:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 566
    iget-boolean v3, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    if-eq v3, v7, :cond_1

    .line 568
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 570
    .local v1, ints:[I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 625
    :pswitch_1
    const-string v3, "#### --- Get ----  OI"

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 626
    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v7, :cond_6

    .line 627
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v7, v3, v7

    .line 628
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 629
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 630
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 631
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 632
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 633
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 634
    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V

    .line 635
    iput-boolean v7, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    goto :goto_0

    .line 572
    :pswitch_2
    const-string v3, "#### --- Get ----  AI"

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v7, :cond_3

    .line 575
    invoke-direct {p0, v6}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 576
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aput-boolean v7, v3, v4

    .line 577
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 579
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 580
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 582
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 583
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    .line 584
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 589
    :pswitch_3
    const-string v3, "#### --- Get ----  IR"

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, v6}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 591
    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v7, :cond_4

    .line 592
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v7, v3, v9

    .line 593
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 595
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 596
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 598
    :cond_4
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v9

    .line 599
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 600
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 604
    :pswitch_4
    const-string v3, "#### --- Get ----  AO"

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 605
    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v7, :cond_5

    .line 606
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v7, v3, v6

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### --- ===>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 609
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 610
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 611
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 612
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 613
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 614
    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V

    .line 615
    iput-boolean v7, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    goto/16 :goto_0

    .line 617
    :cond_5
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v6

    .line 618
    invoke-direct {p0, v7}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 619
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 620
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 621
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 637
    :cond_6
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v7

    .line 638
    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 639
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 640
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 641
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 646
    :pswitch_5
    const-string v3, "#### --- Get ----  OX"

    invoke-static {v3}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->checkFacilityLockStatus([I)Z

    move-result v3

    if-ne v3, v7, :cond_7

    .line 648
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v7, v3, v5

    .line 649
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 650
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 651
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 652
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 653
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 654
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 661
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringOptions;->mDismissDialog(I)V

    .line 662
    iput-boolean v7, p0, Lcom/android/phone/CallBarringOptions;->bInited:Z

    goto/16 :goto_0

    .line 656
    :cond_7
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aput-boolean v8, v3, v5

    .line 657
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 658
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 659
    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 570
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
    .line 678
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 679
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "####  handleSetFacilityLockResponse ..."

    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####  ar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 681
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 682
    const v1, 0x7f0c028d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 686
    :goto_0
    return-void

    .line 685
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringOptions;->updateCallBarringStatus(I)V

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 526
    if-nez p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 536
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->resetDialogState()V

    .line 537
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

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
    .line 871
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 872
    sget-object v1, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 873
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

    sget-object v2, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    :cond_0
    return-void
.end method

.method private static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 808
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
    .line 867
    const-string v0, "CallBarringOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method private mCheckBoxInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 831
    const-string v0, "$$$$ mCheckBoxInit..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    const-string v0, "$$$$ mAOBtn  on ..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 858
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 859
    const-string v0, "$$$$ mAIBtn  on ..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 865
    :cond_1
    :goto_1
    return-void

    .line 839
    :cond_2
    const-string v0, "$$$$ mAOBtn  off ..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 845
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 848
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 850
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 861
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private mDismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ mDismissDialog.... id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 817
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallBarringOptions;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private modeOfFacility(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 403
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    .line 406
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
    .line 789
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 798
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 799
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    .line 800
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->setDialogValues()V

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 802
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0c0297

    .line 223
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 224
    const-string v0, ""

    .line 225
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFacilityLockToCard(IZ)V
    .locals 6
    .parameter "nFacility"
    .parameter "bValue"

    .prologue
    const/4 v4, 0x1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ nFacility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ setFacilityLockToCard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ bValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ mPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 487
    const-string v0, "$$$$ mServiceClass:1"

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallBarringOptions;->CB_FACILITY:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 496
    return-void
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->setDialogValues()V

    .line 252
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 5

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 258
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v2, "AB"

    iget-object v3, p0, Lcom/android/phone/CallBarringOptions;->mOldPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallBarringOptions;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 260
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto :goto_0
.end method

.method private updateCallBarringStatus(I)V
    .locals 4
    .parameter "facilityIndex"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####  updateCallBarringStatus ... = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 692
    if-gez p1, :cond_1

    .line 693
    const v0, 0x7f0c028d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    if-ne p1, v2, :cond_3

    .line 697
    const-string v0, "####  facilityIndex == 1..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 710
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 712
    const-string v0, "####  facilityIndex == 2..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 720
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 725
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 727
    const-string v0, "####  facilityIndex == 3..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 729
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 740
    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 742
    const-string v0, "####  facilityIndex == 5 ..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 744
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 747
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 752
    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 753
    const-string v0, "####  facilityIndex == 6 ..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 756
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 757
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 759
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 760
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 764
    :cond_b
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 765
    const-string v0, "$$$$ barring all......"

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 767
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 769
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 770
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 777
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringOptions;->initCheckboxStatus(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const-string v2, "$$$$ onCreate..."

    invoke-static {v2}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/phone/CallBarringOptions;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->finish()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    .line 157
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/phone/CallBarringOptions;->getFacilityLockFromCard(I)V

    .line 159
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringOptions;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 162
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_ao_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v2, "button_oi_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v2, "button_ox_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v2, "button_ai_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    .line 169
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v2, "button_ir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    .line 171
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    const-string v2, "call_restriction_cancel"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    .line 180
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    const-string v2, "callbarring_passwd"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    .line 183
    if-eqz p1, :cond_2

    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 186
    const-string v2, "dialogError"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 193
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 195
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### onCreateDialog  , id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 389
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 399
    :goto_0
    return-object v0

    .line 391
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->createPasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->barDialog:Landroid/app/Dialog;

    .line 392
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->barDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 394
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/CallBarringOptions;->isFirst:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->getResources()Landroid/content/res/Resources;

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
    invoke-virtual {p0}, Lcom/android/phone/CallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0292

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 389
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
    .line 879
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 880
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 881
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 882
    const/4 v1, 0x1

    .line 884
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

    .line 265
    if-nez p2, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->resetDialogState()V

    .line 303
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringOptions;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 277
    :cond_1
    iget v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOldPin:Ljava/lang/String;

    .line 280
    iput v3, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 281
    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 282
    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mNewPin:Ljava/lang/String;

    .line 287
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 288
    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0299

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 294
    iput v3, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 295
    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mPin:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->showPinDialog()V

    goto :goto_0

    .line 298
    :cond_2
    iput-object v2, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->tryChangePin()V

    goto :goto_0

    .line 277
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

    .line 306
    const-string v0, "$$$$ onPreferenceTreeClick..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    if-ne p2, v0, :cond_2

    .line 312
    iput v4, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 346
    const-string v0, "$$$$ AI..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 349
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[6]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    const/4 v4, 0x6

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    .line 365
    :cond_1
    :goto_2
    return v2

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mButtonAllBarring:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 314
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 317
    const-string v0, "$$$$ AO..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 320
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mAOBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v5

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[3]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 323
    iput v5, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 320
    goto :goto_3

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 326
    const-string v0, "$$$$ OI..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 329
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOIBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    aput-boolean v0, v3, v1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[1]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 332
    iput v1, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 329
    goto :goto_4

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 335
    const-string v0, "$$$$ OX......"

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 338
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mOXBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    aput-boolean v0, v3, v4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[2]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 341
    iput v4, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 338
    goto :goto_5

    :cond_9
    move v0, v2

    .line 349
    goto/16 :goto_1

    .line 354
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 355
    const-string v0, "$$$$ IR..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 358
    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mIRBtn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    aput-boolean v0, v3, v6

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ bCheckboxStatus+[5]+===> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CallBarringOptions;->bCheckboxStatus:[Z

    aget-boolean v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 361
    iput v6, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringOptions;->showDialog(I)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 358
    goto :goto_6
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### onPrepareDialog  , id ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->barDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->barDialog:Landroid/app/Dialog;

    sget-object v1, Lcom/android/phone/CallBarringOptions;->BAR_DIALOG_TITLE:[I

    iget v2, p0, Lcom/android/phone/CallBarringOptions;->mFacilityIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 416
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 202
    const-string v0, "$$$$ onResume..."

    invoke-static {v0}, Lcom/android/phone/CallBarringOptions;->log(Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->resetDialogState()V

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallBarringOptions;->mCheckBoxInit()V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/CallBarringOptions;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/phone/CallBarringOptions;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/phone/CallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
