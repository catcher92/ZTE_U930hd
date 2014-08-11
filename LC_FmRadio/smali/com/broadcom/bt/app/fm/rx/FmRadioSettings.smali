.class public Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;
.super Landroid/preference/PreferenceActivity;
.source "FmRadioSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;,
        Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;
    }
.end annotation


# static fields
.field public static final FM_PREF_AF_ENABLED:Ljava/lang/String; = "fm_pref_af_enabled"

.field public static final FM_PREF_AUDIO_MODE:Ljava/lang/String; = "fm_pref_audio_mode"

.field public static final FM_PREF_AUDIO_PATH:Ljava/lang/String; = "fm_pref_audio_path"

.field public static final FM_PREF_DEEMPHASIS:Ljava/lang/String; = "fm_pref_deemphasis"

.field public static final FM_PREF_ENABLE:Ljava/lang/String; = "fm_pref_enabled"

.field public static final FM_PREF_LIVE_POLLING:Ljava/lang/String; = "fm_pref_live_polling"

.field public static final FM_PREF_LIVE_POLL_INT:Ljava/lang/String; = "fm_pref_live_polling_interval"

.field public static final FM_PREF_NFL_MODE:Ljava/lang/String; = "fm_pref_nfl_mode"

.field public static final FM_PREF_RDS_ENABLED:Ljava/lang/String; = "fm_pref_rds_enabled_2"

.field public static final FM_PREF_SCAN_STEP:Ljava/lang/String; = "fm_pref_scan_step"

.field public static final FM_PREF_SNR_THRESHOLD:Ljava/lang/String; = "fm_pref_snr_thres"

.field public static final FM_PREF_WORLD_REGION:Ljava/lang/String; = "fm_pref_world_region"

.field public static final FM_RDS_MODE_OFF_VALUE:Ljava/lang/String; = "0"

.field public static final FM_RDS_MODE_ON_VALUE:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "RADIO SETTINGS"


# instance fields
.field AFPreference:Landroid/preference/Preference;

.field RDSModePreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v1, "RADIO SETTINGS"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "fm_pref_audio_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 105
    .local v0, p:Landroid/preference/Preference;
    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "fm_pref_rds_enabled_2"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->RDSModePreference:Landroid/preference/Preference;

    .line 112
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->RDSModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "fm_pref_af_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    .line 115
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->RDSModePreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 134
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 136
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fm_pref_rds_enabled_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "RADIO SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "RADIO SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 128
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 150
    const-string v1, "fm_pref_rds_enabled_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "fm_pref_rds_enabled_2"

    const-string v2, "NULL"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, result:Ljava/lang/String;
    const-string v1, "NULL"

    if-eq v0, v1, :cond_0

    .line 153
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 159
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
