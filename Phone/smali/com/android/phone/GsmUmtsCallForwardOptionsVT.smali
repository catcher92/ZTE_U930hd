.class public Lcom/android/phone/GsmUmtsCallForwardOptionsVT;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptionsVT.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreferenceVT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->DBG:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

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

    .line 133
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 135
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :cond_1
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 54
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreferenceVT;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 55
    const-string v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreferenceVT;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 56
    const-string v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreferenceVT;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 57
    const-string v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreferenceVT;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 59
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->setParentActivity(Landroid/app/Activity;I)V

    .line 60
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->setParentActivity(Landroid/app/Activity;I)V

    .line 61
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->setParentActivity(Landroid/app/Activity;I)V

    .line 62
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreferenceVT;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->setParentActivity(Landroid/app/Activity;I)V

    .line 64
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFU:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFB:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mFirstResume:Z

    .line 70
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mIcicle:Landroid/os/Bundle;

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    .line 125
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallForwardEditPreferenceVT;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 165
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 166
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 167
    const/4 v1, 0x1

    .line 169
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 83
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mFirstResume:Z

    if-eqz v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 85
    const-string v4, "GsmUmtsCallForwardOptions"

    const-string v5, "on resume: start to init "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreferenceVT;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CallForwardEditPreferenceVT;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 100
    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mFirstResume:Z

    .line 101
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mIcicle:Landroid/os/Bundle;

    .line 103
    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mInitIndex:I

    .line 90
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 91
    .local v3, pref:Lcom/android/phone/CallForwardEditPreferenceVT;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreferenceVT;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreferenceVT;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 93
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 94
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 95
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 96
    invoke-virtual {v3, v1}, Lcom/android/phone/CallForwardEditPreferenceVT;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 97
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/CallForwardEditPreferenceVT;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptionsVT;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreferenceVT;

    .line 111
    .local v2, pref:Lcom/android/phone/CallForwardEditPreferenceVT;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreferenceVT;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreferenceVT;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 114
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreferenceVT;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreferenceVT;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreferenceVT;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 119
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreferenceVT;
    :cond_1
    return-void
.end method
