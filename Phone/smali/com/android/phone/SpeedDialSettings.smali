.class public Lcom/android/phone/SpeedDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "SpeedDialSettings.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mOldSpeedNumber2:Ljava/lang/String;

.field private mOldSpeedNumber3:Ljava/lang/String;

.field private mOldSpeedNumber4:Ljava/lang/String;

.field private mOldSpeedNumber5:Ljava/lang/String;

.field private mOldSpeedNumber6:Ljava/lang/String;

.field private mOldSpeedNumber7:Ljava/lang/String;

.field private mOldSpeedNumber8:Ljava/lang/String;

.field private mOldSpeedNumber9:Ljava/lang/String;

.field private mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialSettings;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 349
    const-string v1, ""

    .line 350
    .local v1, nullString:Ljava/lang/String;
    const-string v0, ""

    .line 351
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0356

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 379
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 375
    .restart local p1
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/SpeedDialSettings;->getPeopleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getPeopleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 385
    const/4 v8, 0x0

    .line 386
    .local v8, nameFieldColumnIndex:I
    const-string v9, ""

    .line 387
    .local v9, phoneName:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 389
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1 = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 396
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    const-string v9, ""

    move-object v10, v9

    .line 413
    .end local v9           #phoneName:Ljava/lang/String;
    .local v10, phoneName:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 401
    .end local v10           #phoneName:Ljava/lang/String;
    .restart local v9       #phoneName:Ljava/lang/String;
    :cond_0
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 402
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 403
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 404
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 405
    const-string v0, ""

    if-eq v9, v0, :cond_1

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v10, v9

    .line 407
    .end local v9           #phoneName:Ljava/lang/String;
    .restart local v10       #phoneName:Ljava/lang/String;
    goto :goto_0

    .line 402
    .end local v10           #phoneName:Ljava/lang/String;
    .restart local v9       #phoneName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 411
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    const-string v9, ""

    move-object v10, v9

    .line 413
    .end local v9           #phoneName:Ljava/lang/String;
    .restart local v10       #phoneName:Ljava/lang/String;
    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x7f0c033b

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 59
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "speed_dial2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    .line 60
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 62
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 63
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    const-string v1, "speed_dial3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    .line 69
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 72
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number3"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    const-string v1, "speed_dial4"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    .line 78
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number4"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    const-string v1, "speed_dial5"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    .line 87
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number5"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    :cond_3
    const-string v1, "speed_dial6"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    .line 96
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number6"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    :cond_4
    const-string v1, "speed_dial7"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    .line 105
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number7"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    :cond_5
    const-string v1, "speed_dial8"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    .line 114
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number8"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :cond_6
    const-string v1, "speed_dial9"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    .line 123
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_7

    .line 124
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number9"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    :cond_7
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 305
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shen requestCode =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 308
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    const-string v1, "shen resultCode != RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SpeedDialSettings;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_1
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    const-string v1, "shen cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/phone/SpeedDialSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/phone/SpeedDialSettings;->init()V

    .line 55
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 5
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 135
    const-string v2, "SpeedDialSetting.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen buttonClicked =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    instance-of v2, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    .line 138
    move-object v0, p1

    .line 139
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v1, 0x0

    .line 140
    .local v1, newSpeedNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_3

    .line 141
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 144
    if-nez v1, :cond_0

    .line 145
    const-string v1, ""

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber2)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0           #epn:Lcom/android/phone/EditPhoneNumberPreference;
    .end local v1           #newSpeedNumber:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 151
    .restart local v0       #epn:Lcom/android/phone/EditPhoneNumberPreference;
    .restart local v1       #newSpeedNumber:Ljava/lang/String;
    :cond_2
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber2)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number2"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_6

    .line 157
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 160
    if-nez v1, :cond_4

    .line 161
    const-string v1, ""

    .line 163
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber3)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_5
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber3)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number3"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_9

    .line 173
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-nez v1, :cond_7

    .line 177
    const-string v1, ""

    .line 179
    :cond_7
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber4)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_8
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber4)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number4"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 188
    :cond_9
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_c

    .line 189
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 192
    if-nez v1, :cond_a

    .line 193
    const-string v1, ""

    .line 195
    :cond_a
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber5)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_b
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber5)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number5"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 204
    :cond_c
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_f

    .line 205
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 208
    if-nez v1, :cond_d

    .line 209
    const-string v1, ""

    .line 211
    :cond_d
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 212
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber6)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :cond_e
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber6)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number6"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 220
    :cond_f
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_12

    .line 221
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial7"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 224
    if-nez v1, :cond_10

    .line 225
    const-string v1, ""

    .line 227
    :cond_10
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 228
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber7)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_11
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber72)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number7"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :cond_12
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_15

    .line 237
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 240
    if-nez v1, :cond_13

    .line 241
    const-string v1, ""

    .line 243
    :cond_13
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 244
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber8)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_14
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber8)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number8"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    :cond_15
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_1

    .line 253
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen epn == mSpeedDial9"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 256
    if-nez v1, :cond_16

    .line 257
    const-string v1, ""

    .line 259
    :cond_16
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 260
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen newSpeedNumber.equals(mOldSpeedNumber9)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_17
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v3, "shen putString(mOldSpeedNumber9)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number9"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 2
    .parameter "preference"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 275
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 299
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    .line 278
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    .line 281
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    .line 284
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    .line 287
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    .line 290
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 293
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 296
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v1, "shen getString() mSpeedDial9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto/16 :goto_0
.end method
