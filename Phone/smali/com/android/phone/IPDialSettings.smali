.class public Lcom/android/phone/IPDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "IPDialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IPDialSettings$1;,
        Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;
    }
.end annotation


# instance fields
.field private ipdial:Landroid/app/AlertDialog;

.field private local:Ljava/lang/String;

.field private mButton1:Landroid/preference/CheckBoxPreference;

.field private mIPNumber:Lcom/android/phone/EditTextNumberPreference;

.field private mOkClicked:Z

.field private mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mb1:I

.field private mfnum:Ljava/lang/String;

.field private mipnum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IPDialSettings$PhonenumberChangedBroadcastReceiver;-><init>(Lcom/android/phone/IPDialSettings;Lcom/android/phone/IPDialSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/IPDialSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IPDialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IPDialSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private getlocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v6, ""

    .line 212
    .local v6, areaCode:Ljava/lang/String;
    const-string v9, ""

    .line 213
    .local v9, cardtype:Ljava/lang/String;
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, numlocatorUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 215
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 216
    const-string v0, "mq"

    const-string v2, "cursor == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 241
    .end local v6           #areaCode:Ljava/lang/String;
    .local v7, areaCode:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 219
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    const-string v0, "mq"

    const-string v2, "!cursor.moveToFirst()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v6

    .line 222
    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_2
    const-string v0, "areacode"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 238
    .local v8, areaCodeColumn:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    const-string v0, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areaCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 241
    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_0
.end method

.method private sendIntent()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SMART_IP_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, myNumBroadcast:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/IPDialSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    const-string v1, "mq"

    const-string v2, "sendIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private setIPNumberSummary()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    const v1, 0x7f0c0353

    invoke-virtual {v0, v1}, Lcom/android/phone/EditTextNumberPreference;->setSummary(I)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    const v1, 0x7f0c0354

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/IPDialSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditTextNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPhoneNumberSummary()V
    .locals 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    const v1, 0x7f0c0351

    invoke-virtual {v0, v1}, Lcom/android/phone/EditTextNumberPreference;->setSummary(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    const v1, 0x7f0c0352

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/IPDialSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditTextNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 359
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 360
    iput-boolean v2, p0, Lcom/android/phone/IPDialSettings;->mOkClicked:Z

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_ip_dial"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->sendIntent()V

    .line 363
    const-string v0, "mq"

    const-string v1, "mq~~~~DialogInterface.BUTTON1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "mq"

    const-string v1, "mq~~~~not DialogInterface.BUTTON1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c034e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/android/phone/IPDialSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string v3, "ip_dial1"

    invoke-virtual {p0, v3}, Lcom/android/phone/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditTextNumberPreference;

    iput-object v3, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    .line 65
    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditTextNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 66
    .local v2, phoneEdit:Landroid/widget/EditText;
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 68
    const-string v3, "ip_dial2"

    invoke-virtual {p0, v3}, Lcom/android/phone/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditTextNumberPreference;

    iput-object v3, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    .line 69
    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditTextNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 70
    .local v1, ipEdit:Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 71
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 74
    const-string v3, "button_ipdial_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SMART_IP_DIAL"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/IPDialSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/phone/IPDialSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 375
    const-string v0, "mq"

    const-string v1, "mq~~~~onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c034e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 379
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 148
    const-string v0, "mq"

    const-string v1, "**********onPause***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 259
    const-string v2, "mq"

    const-string v3, "**********onPreferenceTreeClick***********"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "button_ipdial_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "mq"

    const-string v3, "button_ipdial_key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c034d

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 265
    iput-boolean v1, p0, Lcom/android/phone/IPDialSettings;->mOkClicked:Z

    .line 266
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0355

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    .line 273
    iget-object v1, p0, Lcom/android/phone/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    const-string v1, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copcheck!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->sendIntent()V

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_ip_dial"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, i:I
    const-string v1, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mq~~~~Settings.System.SMART_TP_DIAL ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0           #i:I
    :goto_1
    const/4 v1, 0x1

    .line 333
    :cond_0
    return v1

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c034e

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_ip_dial"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    const-string v1, "mq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copnotcheck!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 84
    const-string v0, "mq"

    const-string v3, "**********onResume***********"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "local_number"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone_number"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    .line 89
    const-string v0, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mfnum ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->setPhoneNumberSummary()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ip_number"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    .line 97
    const-string v0, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mipnum ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->setIPNumberSummary()V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "smart_ip_dial"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/IPDialSettings;->mb1:I

    .line 104
    const-string v0, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mb1 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mb1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    iget v0, p0, Lcom/android/phone/IPDialSettings;->mb1:I

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget v0, p0, Lcom/android/phone/IPDialSettings;->mb1:I

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c034d

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    :cond_3
    const-string v0, "mq"

    const-string v1, "setEnabled(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 144
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 105
    goto :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c034e

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 139
    :cond_6
    const-string v0, "mq"

    const-string v2, "setEnabled(true)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/phone/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const v10, 0x7f0c034f

    const/4 v9, 0x0

    .line 156
    const-string v6, "mq"

    const-string v7, "**********onSharedPreferenceChanged***********"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v6, "ip_dial1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    const-string v0, ""

    .line 159
    .local v0, myLocal:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v6}, Lcom/android/phone/EditTextNumberPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, num:Ljava/lang/String;
    const-string v6, "mq"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mPhoneNumber text is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 163
    const-string v6, "mq"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "myLocal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/android/phone/IPDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, v1}, Lcom/android/phone/IPDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone_number"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, oldNum1:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v6, v2}, Lcom/android/phone/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 168
    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 202
    .end local v0           #myLocal:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v2           #oldNum1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v0       #myLocal:Ljava/lang/String;
    .restart local v1       #num:Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    .line 181
    :goto_1
    const-string v6, "mq"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " local text is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v6, "mq"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mfnum text is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object v1, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->setPhoneNumberSummary()V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone_number"

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "local_number"

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->sendIntent()V

    goto :goto_0

    .line 173
    :cond_2
    const-string v6, ""

    iput-object v6, p0, Lcom/android/phone/IPDialSettings;->local:Ljava/lang/String;

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone_number"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, oldNum2:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/IPDialSettings;->mPhoneNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v6, v3}, Lcom/android/phone/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 178
    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    .end local v0           #myLocal:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v3           #oldNum2:Ljava/lang/String;
    :cond_4
    const-string v6, "ip_dial2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v6}, Lcom/android/phone/EditTextNumberPreference;->getText()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, pnum:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ip_number"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, oldNum3:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/IPDialSettings;->mIPNumber:Lcom/android/phone/EditTextNumberPreference;

    invoke-virtual {v6, v4}, Lcom/android/phone/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 193
    const v6, 0x7f0c0350

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 196
    .end local v4           #oldNum3:Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->setIPNumberSummary()V

    .line 198
    const-string v6, "mq"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mIPNumber text is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ip_number"

    iget-object v8, p0, Lcom/android/phone/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->sendIntent()V

    goto/16 :goto_0
.end method
