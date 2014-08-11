.class Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;
.super Ljava/lang/Object;
.source "FmRadioSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CyclePreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "p"

    .prologue
    .line 165
    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    .line 166
    .local v1, lp:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, index:I
    const-string v2, "RADIO SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x1

    return v2
.end method
