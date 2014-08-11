.class public Lcom/android/phone/PreferredPlmnListEdit;
.super Landroid/preference/PreferenceActivity;
.source "PreferredPlmnListEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static mSearchDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mCheckBoxGsmAct:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxUtranAct:Landroid/preference/CheckBoxPreference;

.field private mEditTextId:Landroid/preference/EditTextPreference;

.field private mEditTextIndex:Landroid/preference/EditTextPreference;

.field private mEditTextName:Landroid/preference/EditTextPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInGsmActValue:I

.field private mInGsmCompactActValue:I

.field private mInId:Ljava/lang/String;

.field private mInIndex:I

.field private mInOper:Ljava/lang/String;

.field private mInUtranActValue:I

.field private mIsNew:Z

.field private mNewGsmActValue:I

.field private mNewGsmCompactActValue:I

.field private mNewId:Ljava/lang/String;

.field private mNewIndex:I

.field private mNewName:Ljava/lang/String;

.field private mNewUtranActValue:I

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    .line 101
    new-instance v0, Lcom/android/phone/PreferredPlmnListEdit$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredPlmnListEdit$1;-><init>(Lcom/android/phone/PreferredPlmnListEdit;)V

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PreferredPlmnListEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnListEdit;->displayfailedmessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PreferredPlmnListEdit;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PreferredPlmnListEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/PreferredPlmnListEdit;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PreferredPlmnListEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/PreferredPlmnListEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/PreferredPlmnListEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/PreferredPlmnListEdit;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;

    return-object v0
.end method

.method private checkChanged()Z
    .locals 6

    .prologue
    const v5, 0x7f0c02fb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 366
    :goto_0
    return v3

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iput v3, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    .line 341
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    .line 342
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    .line 343
    const-string v1, "PreferredPlmnListEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "PreferredPlmnListEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNewGsmActValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mNewGsmCompactActValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mNewUtranActValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmActValue:I

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmCompactActValue:I

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInUtranActValue:I

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    if-ne v1, v4, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    goto/16 :goto_0

    .line 331
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v3

    .line 340
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 341
    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 342
    goto/16 :goto_4

    .line 360
    :cond_5
    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 361
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    move v3, v2

    .line 366
    goto/16 :goto_0
.end method

.method private deleteNetwork()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 295
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredPlmnListEdit;->showDialog(I)V

    .line 297
    const-string v0, "PreferredPlmnListEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 299
    .local v7, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    const/4 v2, -0x1

    const-string v3, ""

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    .line 300
    return-void
.end method

.method private displayfailedmessage()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 373
    return-void
.end method

.method private saveNetwork()V
    .locals 17

    .prologue
    .line 303
    const-string v1, "PreferredPlmnListEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old network:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PreferredPlmnListEdit;->checkChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 306
    :cond_0
    const/16 v1, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->showDialog(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    .line 311
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    if-eqz v1, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 313
    .local v8, newmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    goto :goto_0

    .line 307
    .end local v8           #newmsg:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 308
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 309
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 315
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnListEdit;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 316
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    const/4 v11, -0x1

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    const-string v1, "PreferredPlmnListEdit"

    const-string v4, "onCreate()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->addPreferencesFromResource(I)V

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 180
    const-string v1, "key_edittext_plmn_list_index"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    .line 181
    const-string v1, "key_edittext_plmn_list_name"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    .line 182
    const-string v1, "key_edittext_plmn_list_id"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    .line 183
    const-string v1, "key_checkbox_plmn_list_gsm_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmAct:Landroid/preference/CheckBoxPreference;

    .line 184
    const-string v1, "key_checkbox_plmn_list_gsm_compact_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmCompactAct:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v1, "key_checkbox_plmn_list_utran_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxUtranAct:Landroid/preference/CheckBoxPreference;

    .line 187
    iput v3, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewIndex:I

    .line 188
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewName:Ljava/lang/String;

    .line 189
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewId:Ljava/lang/String;

    .line 190
    iput v3, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmActValue:I

    .line 191
    iput v3, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewGsmCompactActValue:I

    .line 192
    iput v3, p0, Lcom/android/phone/PreferredPlmnListEdit;->mNewUtranActValue:I

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    .line 196
    const-string v1, "oper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    .line 197
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    .line 198
    const-string v1, "gsmact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmActValue:I

    .line 199
    const-string v1, "gsmcompactact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmCompactActValue:I

    .line 200
    const-string v1, "utranact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInUtranActValue:I

    .line 202
    const-string v4, "add"

    const-string v1, "add"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInOper:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    iget-boolean v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    iget-boolean v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextIndex:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 222
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mEditTextId:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmAct:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmActValue:I

    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxGsmCompactAct:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInGsmCompactActValue:I

    if-nez v1, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnListEdit;->mCheckBoxUtranAct:Landroid/preference/CheckBoxPreference;

    iget v4, p0, Lcom/android/phone/PreferredPlmnListEdit;->mInUtranActValue:I

    if-nez v4, :cond_5

    :goto_4
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    return-void

    :cond_1
    move v1, v3

    .line 213
    goto :goto_0

    :cond_2
    move v1, v3

    .line 214
    goto :goto_1

    :cond_3
    move v1, v2

    .line 224
    goto :goto_2

    :cond_4
    move v1, v2

    .line 225
    goto :goto_3

    :cond_5
    move v3, v2

    .line 226
    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 253
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 254
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    .line 259
    sget-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 261
    sget-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 264
    sget-object v0, Lcom/android/phone/PreferredPlmnListEdit;->mSearchDialog:Landroid/app/ProgressDialog;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 232
    iget-boolean v0, p0, Lcom/android/phone/PreferredPlmnListEdit;->mIsNew:Z

    if-nez v0, :cond_0

    .line 233
    const v0, 0x7f0c02f2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c02f3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 236
    const/4 v0, 0x3

    const v1, 0x7f0c02f4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 385
    const/4 v0, 0x1

    .line 387
    .local v0, retVal:Z
    packed-switch p1, :pswitch_data_0

    .line 393
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 397
    return v0

    .line 389
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnListEdit;->saveNetwork()V

    .line 390
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 282
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnListEdit;->deleteNetwork()V

    goto :goto_0

    .line 285
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnListEdit;->saveNetwork()V

    goto :goto_0

    .line 288
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->finish()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 250
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 270
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnListEdit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 244
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    const-string v0, "PreferredPlmnListEdit"

    const-string v1, "invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/phone/PreferredPlmnListEdit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
