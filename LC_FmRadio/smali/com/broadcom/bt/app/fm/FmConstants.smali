.class public Lcom/broadcom/bt/app/fm/FmConstants;
.super Ljava/lang/Object;
.source "FmConstants.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.fm.transmit.action.STATE_CHANGED"

.field public static final AF_STATE_OFF:I = 0x0

.field public static final AF_STATE_ON:I = 0x1

.field public static final BUTTON_CHANEL_LIST:I = 0x11

.field public static final BUTTON_CH_1:I = 0x15

.field public static final BUTTON_CH_10:I = 0x1e

.field public static final BUTTON_CH_11:I = 0x1f

.field public static final BUTTON_CH_12:I = 0x20

.field public static final BUTTON_CH_13:I = 0x21

.field public static final BUTTON_CH_14:I = 0x22

.field public static final BUTTON_CH_15:I = 0x23

.field public static final BUTTON_CH_16:I = 0x24

.field public static final BUTTON_CH_17:I = 0x25

.field public static final BUTTON_CH_18:I = 0x26

.field public static final BUTTON_CH_19:I = 0x27

.field public static final BUTTON_CH_2:I = 0x16

.field public static final BUTTON_CH_20:I = 0x28

.field public static final BUTTON_CH_21:I = 0x29

.field public static final BUTTON_CH_22:I = 0x2a

.field public static final BUTTON_CH_23:I = 0x2b

.field public static final BUTTON_CH_24:I = 0x2c

.field public static final BUTTON_CH_25:I = 0x2d

.field public static final BUTTON_CH_26:I = 0x2e

.field public static final BUTTON_CH_27:I = 0x2f

.field public static final BUTTON_CH_3:I = 0x17

.field public static final BUTTON_CH_4:I = 0x18

.field public static final BUTTON_CH_5:I = 0x19

.field public static final BUTTON_CH_6:I = 0x1a

.field public static final BUTTON_CH_7:I = 0x1b

.field public static final BUTTON_CH_8:I = 0x1c

.field public static final BUTTON_CH_9:I = 0x1d

.field public static final BUTTON_EVENT_DOWN:I = 0x2

.field public static final BUTTON_EVENT_HELD:I = 0x3

.field public static final BUTTON_EVENT_NONE:I = 0x0

.field public static final BUTTON_EVENT_UP:I = 0x1

.field public static final BUTTON_MUTE:I = 0x7

.field public static final BUTTON_MUTE_OFF:I = 0x9

.field public static final BUTTON_MUTE_ON:I = 0x8

.field public static final BUTTON_POWER_OFF:I = 0x5

.field public static final BUTTON_PRESETS:I = 0x6

.field public static final BUTTON_SAVE_CHANEL:I = 0x10

.field public static final BUTTON_SEARCH:I = 0x12

.field public static final BUTTON_SEEK_DOWN:I = 0xd

.field public static final BUTTON_SEEK_UP:I = 0xc

.field public static final BUTTON_SETTINGS:I = 0xf

.field public static final BUTTON_SWITCH_FM_RX:I = 0xe

.field public static final BUTTON_TUNE_DOWN:I = 0xb

.field public static final BUTTON_TUNE_UP:I = 0xa

.field public static final COMBO_SEARCH_MULTI_CHANNEL_DEFAULT:Z = false

.field private static final DEFAULT_FREQUENCY:I = 0x2940

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.fm.transmit.extra.STATE"

.field public static final FM_COMBO_SEARCH_ENABLED:Z = true

.field public static final FM_FREQUENCY_TUNE_DOWN:I = 0x1

.field public static final FM_FREQUENCY_TUNE_UP:I = 0x0

.field public static final FM_SOFTMUTE_FEATURE_ENABLED:Z = false

.field public static final FREQ_VALUE_MAX:I = 0x4e1b

.field public static final FREQ_VALUE_MIN:I = 0x64

.field public static final MAX_FREQUENCY_JAPAN:I = 0x2328

.field public static final MAX_FREQUENCY_JAPAN_II:I = 0x2a30

.field public static final MAX_FREQUENCY_US_EUROPE:I = 0x2a30

.field public static final MIN_FREQUENCY_JAPAN:I = 0x1db0

.field public static final MIN_FREQUENCY_JAPAN_II:I = 0x2328

.field public static final MIN_FREQUENCY_US_EUROPE:I = 0x222e

.field public static final MUTE_STATE_MUTED:I = 0x0

.field public static final MUTE_STATE_UNMUTED:I = 0x1

.field public static final PREF_LAST_TUNED_FREQUENCY:Ljava/lang/String; = "pref_last_tuned_frequency"

.field public static PTY_LIST:[Ljava/lang/String; = null

.field public static final RDS_ID_PS_EVT:I = 0x7

.field public static final RDS_ID_PTYN_EVT:I = 0x8

.field public static final RDS_ID_PTY_EVT:I = 0x2

.field public static final RDS_ID_RT_EVT:I = 0x9

.field public static final RDS_STATE_RBDS_ON:I = 0x2

.field public static final RDS_STATE_RDS_OFF:I = 0x0

.field public static final RDS_STATE_RDS_ON:I = 0x1

.field public static final SCAN_STEP_100KHZ:I = 0xa

.field public static final SCAN_STEP_200KHZ:I = 0x14

.field public static final SCAN_STEP_50KHZ:I = 0x5

.field public static final SIGNAL_STRENGTH_HIGH:I = 0x3

.field public static final SIGNAL_STRENGTH_LOW:I = 0x1

.field public static final SIGNAL_STRENGTH_MEDIUM:I = 0x2

.field public static final SIGNAL_STRENGTH_NONE:I = 0x0

.field public static final SOFTMUTE_STATE_OFF:I = 0x0

.field public static final SOFTMUTE_STATE_ON:I = 0x1

.field public static final STATE_FM_TRANSIT_ERROR:I = -0x1e240

.field public static final STATE_FM_TRANSIT_OFF:I = 0xb

.field public static final STATE_FM_TRANSIT_ON:I = 0xa

.field public static final STATE_FM_TRANSIT_TURNING_OFF:I = 0xd

.field public static final STATE_FM_TRANSIT_TURNING_ON:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 168
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "News"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Current Affairs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Information"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Sport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Education"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Drama"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Cultures"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Science"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Varied Speech"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Pop Music"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Rock Music"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Light Classics M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Serious Classics"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Other Music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Weather & Metr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Finance"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Children\'s Progs"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Social Affairs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Religion"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Phone In"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Travel & Touring"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Leisure & Hobby"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Jazz Music"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Country Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "National Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Oldies Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Folk Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Documentary"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Alarm Test"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Alarm - Alarm !"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/fm/FmConstants;->PTY_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
