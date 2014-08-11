.class public Lcom/broadcom/bt/app/fm/rx/FmRadio;
.super Landroid/app/Activity;
.source "FmRadio.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;,
        Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;,
        Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;,
        Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_FREQUENCY:I = 0x226a

.field private static final FM_MUTE:I = 0xf

.field private static final GET_PROXY_ERROR:I = 0xc

.field private static final GUI_UPDATE_CHANNEL_BUTTON:I = 0xe

.field private static final GUI_UPDATE_MSG_AF_STATUS:I = 0x6

.field private static final GUI_UPDATE_MSG_FREQ_STATUS:I = 0x3

.field private static final GUI_UPDATE_MSG_MUTE_STATUS:I = 0x2

.field private static final GUI_UPDATE_MSG_RDS_DATA:I = 0x7

.field private static final GUI_UPDATE_MSG_RDS_STATUS:I = 0x5

.field private static final GUI_UPDATE_MSG_SIGNAL_STATUS:I = 0x1

.field private static final GUI_UPDATE_MSG_WORLD_STATUS:I = 0x4

.field private static final LOAD_MAIN_VIEW:I = 0x9

.field private static final MAX_FREQ:I = 0x1a5e0

.field private static final MENU_CH_CANCEL:I = 0x3

.field private static final MENU_CH_CLEAR:I = 0x2

.field private static final MENU_CH_EDIT:I = 0x4

.field private static final MENU_CH_SET:I = 0x1

.field private static final MENU_SLEEP_CANCEL:I = 0xb

.field private static final MIN_FREQ:I = 0x155cc

.field private static final MSG_SLEEPTIMER_EXPIRED:I = 0x65

.field private static final MSG_SLEEPTIMER_UPDATE:I = 0x64

.field private static final NFL_TIMER_EVENT:I = 0x15

.field private static final NUM_OF_CHANNELLIST:I = 0x32

.field private static final NUM_OF_CHANNELS:I = 0x1b

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final REQ_BROWSER:I = 0x0

.field private static final SEARCH_RADIO:I = 0xa

.field private static final SET_HEADSET_ON:I = 0x10

.field private static final SHOW_STARTUP_DIALOG:I = 0xd

.field private static final SIGNAL_CHECK_PENDING_EVENTS:I = 0x14

.field private static final SLEEP_TOGGLE_SECONDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "FmRxRadio"

.field private static final TAG_TEST:Ljava/lang/String; = "FmRxRadio_TEST---- "

.field private static final UPDATE_SEARCHED_RADIO:I = 0xb

.field private static final UPDATE_WELCOM_VIEW:I = 0x8

.field private static final V:Z = true

.field private static final channelListItem:Ljava/lang/String; = "channellist_item"

.field private static final channelNameKey:Ljava/lang/String; = "channel_name"

.field private static final currentFreqKey:Ljava/lang/String; = "current_freq"

.field private static final freqPreferenceKey:Ljava/lang/String; = "channel"

.field private static final lastFreqPreferenceKey:Ljava/lang/String; = "last"

.field private static mLongPressChannel:I = 0x0

.field private static final mPathKeyHeadphone:Ljava/lang/String; = "routing=12"

.field private static final mPathKeySpeaker:Ljava/lang/String; = "routing=2"

.field public static mSleepAtPhoneTime:J

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private final DIALOG_ID_EDIT_CHANNEL:I

.field private final DIALOG_ID_EDIT_CHANNEL_FAIL:I

.field private final DIALOG_ID_SAVE_CHANNEL:I

.field private final DIALOG_ID_SAVE_CHANNEL_FAIL:I

.field private final DIALOG_START_UP:I

.field private audioModeUpdatePending:Z

.field private audioPathUpdatePending:Z

.field private bFinishCalled:Z

.field private dialView:Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

.field private doSleepProcessing:Ljava/lang/Runnable;

.field private fmSetSNRThresholdPending:Z

.field private fmVolumeUpdatepending:Z

.field private frequencyUpdatePending:Z

.field private frequency_lower:Landroid/widget/TextView;

.field private frequency_upper:Landroid/widget/TextView;

.field private idx:I

.field private isHeadSetOn:Z

.field private isLoadingWel:Z

.field private isSearching:Z

.field private isStarted:Z

.field private livePollingUpdatePending:Z

.field private mAirModeReceiver:Landroid/content/BroadcastReceiver;

.field mAudioManager:Landroid/media/AudioManager;

.field private mChanelInstruction:Landroid/widget/TextView;

.field private mChanelZone:Lcom/broadcom/bt/app/fm/drag/ChanelZone;

.field private mChannelFrequency:Landroid/widget/TextView;

.field private mChannelHolder:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

.field private mChannelName:Landroid/widget/EditText;

.field private mChannels:[I

.field private mContext:Landroid/content/Context;

.field private mCurrPageIndex:I

.field private mDecimals:Landroid/widget/NumberPicker;

.field private mFMAudioFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mFinish:Z

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

.field private mFrequency:I

.field private mFrequencyStep:I

.field private mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

.field private mImage_frequency_tv:Lcom/broadcom/bt/app/fm/drag/DragContainer;

.field private mInCall:Z

.field private mInteger:Landroid/widget/NumberPicker;

.field private mIsFirstTimeEntry:I

.field private mLayoutHeadsetWarning:Landroid/widget/RelativeLayout;

.field private mMaxFreq:I

.field private mMenu:Landroid/view/Menu;

.field private mMinFreq:I

.field private mNfl:I

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPbLoad:Landroid/widget/ProgressBar;

.field private mPendingAfMode:I

.field private mPendingAudioMode:I

.field private mPendingAudioPath:I

.field private mPendingDeemphasis:I

.field private mPendingFrequency:I

.field private mPendingLivePoll:Z

.field private mPendingLivePollinterval:I

.field private mPendingMute:Z

.field private mPendingNflEstimate:I

.field private mPendingRdsMode:I

.field private mPendingRdsType:I

.field private mPendingRegion:I

.field private mPendingScanMethod:I

.field private mPendingScanStep:I

.field private mPendingSearchDirection:I

.field private mPendingSnrThreshold:I

.field private mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

.field mPowerOffRadio:Z

.field private mPresetButtonAnimation:Landroid/view/animation/Animation;

.field private mRadioIsOn:Z

.field private mRadios:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRdsProgramTypes:[Ljava/lang/String;

.field private mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

.field private mSearchProgressDialog:Landroid/app/ProgressDialog;

.field private mSearchRadioCount:I

.field private mSeekInProgress:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mStartUpProgressDialog:Landroid/app/ProgressDialog;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Ljava/util/Timer;

.field private mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

.field private mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWorldRegion:I

.field private muteUpdatePending:Z

.field private nflEstimateUpdatePending:Z

.field private powerupPending:Z

.field private rdsModeUpdatePending:Z

.field private reachedtoEdge:Z

.field private scanStepUpdatePending:Z

.field private shutdownPending:Z

.field private stationSearchUpdatePending:Z

.field protected viewUpdateHandler:Landroid/os/Handler;

.field private worldRegionUpdatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 336
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    .line 3404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 3405
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sFormatter:Ljava/util/Formatter;

    .line 3407
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x226a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 221
    const/16 v0, 0x1b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    .line 233
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I

    .line 235
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    .line 236
    const/16 v0, 0xa

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    .line 240
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 241
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 244
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    .line 245
    const/16 v0, 0x40

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 246
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    .line 247
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 248
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 249
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    .line 250
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    .line 253
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanMethod:I

    .line 254
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    .line 255
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsType:I

    .line 256
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    .line 257
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    .line 258
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    .line 259
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    .line 260
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    .line 261
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    .line 267
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 269
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    .line 271
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    .line 272
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 273
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 274
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 275
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    .line 276
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 277
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 278
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 279
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 280
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 281
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    .line 282
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 283
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFinish:Z

    .line 284
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->bFinishCalled:Z

    .line 285
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadioIsOn:Z

    .line 286
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    .line 300
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    .line 303
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPbLoad:Landroid/widget/ProgressBar;

    .line 305
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    .line 314
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    .line 318
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    .line 322
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isStarted:Z

    .line 323
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mCurrPageIndex:I

    .line 326
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelHolder:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    .line 327
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPresetButtonAnimation:Landroid/view/animation/Animation;

    .line 332
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z

    .line 334
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    .line 337
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2131
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    .line 3003
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFMAudioFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3100
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->DIALOG_ID_SAVE_CHANNEL:I

    .line 3101
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->DIALOG_ID_SAVE_CHANNEL_FAIL:I

    .line 3102
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->DIALOG_START_UP:I

    .line 3104
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->DIALOG_ID_EDIT_CHANNEL:I

    .line 3105
    const/4 v0, 0x4

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->DIALOG_ID_EDIT_CHANNEL_FAIL:I

    .line 3338
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$13;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->doSleepProcessing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->retryPendingCommands()V

    return-void
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    return v0
.end method

.method static synthetic access$1202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    return p1
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isLoadingWel:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    return v0
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/app/fm/rx/FmRadio;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    return v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V

    return-void
.end method

.method static synthetic access$208(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    return v0
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$2202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I

    return p1
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->reachedtoEdge:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    return p1
.end method

.method static synthetic access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I

    return p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    return v0
.end method

.method static synthetic access$3300(Lcom/broadcom/bt/app/fm/rx/FmRadio;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->saveChannelName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannelSaveLoc()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/broadcom/bt/app/fm/rx/FmRadio;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->initiateSleepTimer(J)V

    return-void
.end method

.method static synthetic access$3700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    return v0
.end method

.method static synthetic access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    return p1
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    return v0
.end method

.method static synthetic access$802(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    return p1
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private buttonSeekFrequencyDown()V
    .locals 3

    .prologue
    .line 2708
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonSeekFrequencyDown region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2712
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-nez v0, :cond_0

    .line 2713
    const/16 v0, 0x226a

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 2725
    :goto_0
    return-void

    .line 2715
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    if-le v0, v1, :cond_2

    .line 2716
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_1

    .line 2717
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 2723
    :goto_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 2719
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1

    .line 2721
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1
.end method

.method private buttonSeekFrequencyUp()V
    .locals 3

    .prologue
    .line 2687
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonSeekFrequencyUp: region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2691
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-nez v0, :cond_0

    .line 2692
    const/16 v0, 0x226a

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 2704
    :goto_0
    return-void

    .line 2694
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-ge v0, v1, :cond_2

    .line 2695
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_1

    .line 2696
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 2702
    :goto_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 2698
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1

    .line 2700
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1
.end method

.method private checkPhoneInUse()Z
    .locals 3

    .prologue
    .line 3298
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3299
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createEditChannelDialog()Landroid/app/AlertDialog;
    .locals 12

    .prologue
    .line 3154
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3156
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f090088

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3157
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 3159
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030008

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 3161
    .local v6, layout:Landroid/widget/LinearLayout;
    const v9, 0x7f07004b

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;

    .line 3162
    const v9, 0x7f07004c

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelFrequency:Landroid/widget/TextView;

    .line 3165
    sget v7, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    .line 3166
    .local v7, loc:I
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channel_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3167
    .local v8, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3168
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channel"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3169
    .local v4, frequency:I
    iget-object v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelFrequency:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v11, v4, 0x64

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    rem-int/lit8 v11, v4, 0x64

    div-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    const v9, 0x7f07004d

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3173
    .local v2, btnOK:Landroid/widget/Button;
    new-instance v9, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;

    invoke-direct {v9, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3190
    const v9, 0x7f07004e

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3191
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v9, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;

    invoke-direct {v9, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3196
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3197
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3198
    return-object v0
.end method

.method private createSaveChannelDialog()Landroid/app/AlertDialog;
    .locals 10

    .prologue
    .line 3205
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3206
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f02002a

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3207
    const v8, 0x7f090076

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3208
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3210
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 3212
    .local v5, layout:Landroid/widget/LinearLayout;
    const v8, 0x7f07004b

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;

    .line 3213
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannelSaveLoc()I

    move-result v6

    .line 3214
    .local v6, loc:I
    const v8, 0x7f090077

    invoke-virtual {p0, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3215
    .local v7, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3216
    iget-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3218
    const v8, 0x7f07004d

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3219
    .local v2, btnOK:Landroid/widget/Button;
    new-instance v8, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;

    invoke-direct {v8, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$11;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3234
    const v8, 0x7f07004e

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3235
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v8, Lcom/broadcom/bt/app/fm/rx/FmRadio$12;

    invoke-direct {v8, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$12;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3241
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3242
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3243
    return-object v0
.end method

.method private createStartUpDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 431
    iput-boolean v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isLoadingWel:Z

    .line 432
    iput v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    .line 433
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 436
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    .line 437
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 444
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 447
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 450
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_1

    .line 451
    new-instance v6, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;

    invoke-direct {v6, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    .line 452
    .local v6, runGetProxy:Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
    invoke-virtual {v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->start()V

    .line 456
    .end local v6           #runGetProxy:Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mStartUpProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private displayErrorMessageAndExit(Ljava/lang/String;)V
    .locals 3
    .parameter "errorMessage"

    .prologue
    .line 1750
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1751
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1752
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadio$6;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$6;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1759
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1760
    return-void
.end method

.method private enableFMAudio(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 3038
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>enableFMAudio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    if-eqz p1, :cond_1

    .line 3040
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isGetAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3041
    const-string v0, "FmRxRadio"

    const-string v1, "powup:can not get audio focus."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :goto_0
    return-void

    .line 3044
    :cond_0
    const-string v0, "FmRxRadio"

    const-string v1, "FM get audio Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3047
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFMAudioFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method private endSleepTimer()V
    .locals 2

    .prologue
    .line 3452
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    .line 3453
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3457
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v0, v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3460
    :cond_1
    return-void
.end method

.method private getChannelSaveLoc()I
    .locals 2

    .prologue
    .line 3248
    const/4 v0, 0x0

    .local v0, loc:I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    .line 3249
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 3252
    :cond_0
    return v0

    .line 3248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasSleepTimerExpired()Z
    .locals 5

    .prologue
    .line 3373
    const/4 v0, 0x1

    .line 3374
    .local v0, expired:Z
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSleepTimerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3378
    .local v1, timeNow:J
    sget-wide v3, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 3380
    const/4 v0, 0x0

    .line 3383
    .end local v1           #timeNow:J
    :cond_0
    return v0
.end method

.method private initiateSleepThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3316
    const-string v0, "FmRxRadio"

    const-string v1, "initiateSleepThread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 3319
    const-string v0, "FmRxRadio"

    const-string v1, "initiateSleepThread 111 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3324
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 3326
    const-string v0, "FmRxRadio"

    const-string v1, "initiateSleepThread 2222 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3331
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 3333
    const-string v0, "FmRxRadio"

    const-string v1, "initiateSleepThread 3333 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3336
    :cond_2
    return-void
.end method

.method private initiateSleepTimer(J)V
    .locals 4
    .parameter "seconds"

    .prologue
    .line 3310
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateSleepTimer  seconds=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    .line 3312
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->initiateSleepThread()V

    .line 3313
    return-void
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3292
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getContentResolver()Landroid/content/ContentResolver;

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

.method private isSleepTimerActive()Z
    .locals 5

    .prologue
    .line 3302
    const/4 v0, 0x0

    .line 3303
    .local v0, active:Z
    sget-wide v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 3305
    const/4 v0, 0x1

    .line 3307
    :cond_0
    return v0
.end method

.method private loadMainView()V
    .locals 6

    .prologue
    .line 513
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setContentView(Landroid/view/View;)V

    .line 516
    const/16 v3, 0x222e

    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    .line 517
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 518
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 520
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFrequencies()V

    .line 521
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyStep(I)V

    .line 523
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showDialog(I)V

    .line 537
    const/16 v0, 0x15

    .local v0, i:I
    :goto_0
    const/16 v3, 0x2f

    if-gt v0, v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v3, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 539
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerForContextMenu(Landroid/view/View;)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v2           #v:Landroid/view/View;
    :cond_0
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    .line 543
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 552
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 553
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.media.FM_VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v3, "Sreach_Fre_Time_Out"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setVolumeControlStream(I)V

    .line 580
    return-void
.end method

.method private loadWelView()V
    .locals 9

    .prologue
    .line 460
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setContentView(I)V

    .line 461
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 462
    .local v8, spaceTopPb:Landroid/widget/TextView;
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPbLoad:Landroid/widget/ProgressBar;

    .line 464
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 466
    .local v6, creen_height:I
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    div-int/lit8 v1, v6, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isLoadingWel:Z

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->idx:I

    .line 470
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    .line 471
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 478
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_0

    .line 479
    new-instance v7, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;

    invoke-direct {v7, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    .line 480
    .local v7, runGetProxy:Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
    invoke-virtual {v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;->start()V

    .line 482
    .end local v7           #runGetProxy:Lcom/broadcom/bt/app/fm/rx/FmRadio$ThreadGetProxy;
    :cond_0
    return-void
.end method

.method private needSave()Z
    .locals 3

    .prologue
    .line 3270
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    .line 3271
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v1, v2, :cond_0

    .line 3272
    const/4 v1, 0x0

    .line 3274
    :goto_1
    return v1

    .line 3270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3274
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private powerUpSequence()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 865
    const-string v3, "FmRxRadio"

    const-string v4, "powerUpSequence()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->enableFMAudio(Z)V

    .line 871
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 872
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    .line 873
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 874
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 875
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 876
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 877
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 878
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 880
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 881
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 882
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 883
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 886
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning on radio... mFmReceiver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; Softmute state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 890
    const-string v3, "FmRxRadio"

    const-string v4, "Invalid FM Receiver Proxy!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    .line 929
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v2

    .line 901
    .local v2, status:I
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turn on radio status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-nez v2, :cond_2

    .line 908
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerUpSequence muteUpdatePending="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mPendingMute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    .line 913
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_1

    .line 914
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateSetSNRThreshold(Landroid/content/SharedPreferences;)V

    .line 916
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 917
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 918
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 919
    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 920
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 923
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090074

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, error:Ljava/lang/String;
    const-string v3, "FmRxRadio"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    .line 927
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private powerupComplete()V
    .locals 3

    .prologue
    .line 992
    const-string v0, "FmRxRadio"

    const-string v1, "powerupcomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    const-string v0, "FmRxRadio"

    const-string v1, "wait Radio On."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last"

    const/16 v2, 0x226a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1002
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 1005
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFreqToService()V

    .line 1006
    return-void

    .line 997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private retryPendingCommands()V
    .locals 3

    .prologue
    .line 1713
    const-string v0, "FmRxRadio"

    const-string v1, "retryPendingCommands()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateNflEstimate(Landroid/content/SharedPreferences;)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    if-eqz v0, :cond_2

    .line 1719
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1720
    :cond_2
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    if-eqz v0, :cond_3

    .line 1721
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioPath(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1722
    :cond_3
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    if-nez v0, :cond_0

    .line 1727
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    if-eqz v0, :cond_4

    .line 1728
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@ frequencyUpdatePending() freq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 1731
    :cond_4
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    if-eqz v0, :cond_5

    .line 1732
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 1733
    :cond_5
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    if-eqz v0, :cond_6

    .line 1734
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateScanStep(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1735
    :cond_6
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    if-eqz v0, :cond_7

    .line 1736
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 1737
    :cond_7
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    if-eqz v0, :cond_8

    .line 1738
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1740
    :cond_8
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    if-eqz v0, :cond_9

    .line 1741
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    .line 1743
    :cond_9
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private saveChannelName(ILjava/lang/String;)V
    .locals 5
    .parameter "location"
    .parameter "name"

    .prologue
    .line 3256
    const/16 v2, 0x15

    .local v2, i:I
    :goto_0
    const/16 v3, 0x2f

    if-gt v2, v3, :cond_1

    .line 3257
    add-int/lit8 v3, v2, -0x15

    add-int/lit8 v0, v3, 0x1

    .line 3258
    .local v0, channel:I
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannelName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3259
    const v3, 0x7f09009c

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3267
    .end local v0           #channel:I
    :goto_1
    return-void

    .line 3256
    .restart local v0       #channel:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3264
    .end local v0           #channel:I
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3265
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3266
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method private showNotification()V
    .locals 19

    .prologue
    .line 2968
    const v6, 0x7f02006c

    .line 2971
    .local v6, icon:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f090096

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(%.01f MHz)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x4059

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2973
    .local v9, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2974
    .local v10, when:J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    if-eqz v12, :cond_0

    .line 2975
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2977
    :cond_0
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7, v6, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2979
    .local v7, notification:Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 2981
    .local v5, context:Landroid/content/Context;
    const v12, 0x7f090096

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2982
    .local v4, contentTitle:Ljava/lang/String;
    const-string v12, "%.02f MHz"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x4059

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2984
    .local v3, contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    if-eqz v12, :cond_1

    .line 2985
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2987
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v12, Lcom/broadcom/bt/app/fm/rx/FmRadio;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2988
    .local v8, notificationIntent:Landroid/content/Intent;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v8, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2991
    .local v2, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v7, v5, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2994
    const/4 v1, 0x1

    .line 2995
    .local v1, PLAYING_ID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2996
    return-void
.end method

.method private updateAudioMode(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 1151
    const-string v0, "FmRxRadio"

    const-string v1, "updateAudioMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_audio_mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    .line 1157
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending audio mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 1165
    :cond_0
    return-void

    .line 1162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAudioPath(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 1175
    const-string v0, "FmRxRadio"

    const-string v1, "updateAudioPath()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending audio path ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioPath(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 1193
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioPathUpdatePending == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    return-void

    .line 1191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChannels()V
    .locals 5

    .prologue
    .line 3278
    const/4 v0, 0x0

    .local v0, loc:I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    .line 3279
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 3278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3281
    :cond_0
    return-void
.end method

.method private updateCurrentChannel()V
    .locals 4

    .prologue
    .line 3284
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "current_freq"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3285
    .local v0, currentFreq:I
    if-eqz v0, :cond_0

    .line 3286
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setFrequency(I)V

    .line 3288
    :cond_0
    return-void
.end method

.method private updateExpiredSleepTime()V
    .locals 8

    .prologue
    .line 3386
    const-string v4, "FmRxRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateExpiredSleepTime  isSleepTimerActive()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSleepTimerActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSleepTimerActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3390
    .local v2, timeNow:J
    const-string v4, "FmRxRadio"

    const-string v5, "updateExpiredSleepTime  111"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    sget-wide v4, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    .line 3393
    const-string v4, "FmRxRadio"

    const-string v5, "updateExpiredSleepTime  2222()=="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    sget-wide v4, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 3395
    .local v0, seconds:J
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->makeTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showSleeptime(Ljava/lang/String;J)V

    .line 3403
    .end local v0           #seconds:J
    .end local v2           #timeNow:J
    :cond_0
    :goto_0
    return-void

    .line 3399
    .restart local v2       #timeNow:J
    :cond_1
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSleepAtPhoneTime:J

    goto :goto_0
.end method

.method private updateFMVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1104
    const-string v0, "FmRxRadio"

    const-string v1, "updateFMVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    .line 1110
    :cond_0
    return-void
.end method

.method private updateFrequency(I)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 1205
    const-string v1, "FmRxRadio_TEST---- updateFrequency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFrequency() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1209
    const-string v1, "FmRxRadio_TEST---- updateFrequency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 1215
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending frequency ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showNotification()V

    .line 1228
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1229
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_freq"

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1232
    return-void

    .line 1220
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLivePolling(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sp"

    .prologue
    const/4 v1, 0x0

    .line 1379
    const-string v0, "FmRxRadio"

    const-string v2, "updateLivePolling()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string v0, "fm_pref_live_polling"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    .line 1385
    const-string v0, "fm_pref_live_polling_interval"

    const-string v2, "2000"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    .line 1388
    const-string v2, "FmRxRadio"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending live poll ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    if-eqz v0, :cond_1

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v0, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending live poll interval ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    invoke-virtual {v0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->setLiveAudioPolling(ZI)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 1400
    :cond_0
    return-void

    .line 1388
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1396
    goto :goto_1
.end method

.method private updateMinMaxFreqToService()V
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->setMinMaxFreq(II)I

    .line 1447
    return-void
.end method

.method private updateMinMaxFrequencies()V
    .locals 4

    .prologue
    const/16 v3, 0x2a30

    const/16 v2, 0x2328

    .line 1428
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-nez v0, :cond_2

    .line 1430
    :cond_0
    const/16 v0, 0x222e

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1431
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    .line 1442
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMinMaxFrequencies(II)V

    .line 1443
    :cond_1
    return-void

    .line 1432
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1433
    const/16 v0, 0x1db0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1434
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    goto :goto_0

    .line 1435
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1436
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1437
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    goto :goto_0
.end method

.method private updateMuted(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 1242
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMuted() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    .line 1247
    const-string v1, "FmRxRadio"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending muted ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    if-eqz v0, :cond_1

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    .line 1253
    :cond_0
    return-void

    .line 1247
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0

    .line 1251
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNflEstimate(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 1263
    const-string v0, "FmRxRadio"

    const-string v1, "updateNflEstimate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_nfl_mode"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    .line 1270
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending NFL mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->estimateNoiseFloorLevel(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 1278
    :cond_0
    return-void

    .line 1275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePhoneState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3051
    const-string v0, "N/A"

    .line 3054
    .local v0, stateString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3097
    :cond_0
    :goto_0
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    return-void

    .line 3056
    :pswitch_0
    const-string v0, "Idle"

    .line 3057
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3063
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v1, v2, :cond_1

    .line 3065
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3068
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    .line 3070
    :cond_2
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    goto :goto_0

    .line 3073
    :pswitch_1
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    .line 3074
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    if-eqz v1, :cond_3

    .line 3075
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 3077
    :cond_3
    const-string v0, "Off Hook"

    .line 3079
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3080
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    goto :goto_0

    .line 3084
    :pswitch_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3087
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    .line 3089
    :cond_4
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    .line 3090
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    if-eqz v1, :cond_5

    .line 3091
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 3093
    :cond_5
    const-string v0, "Ringing"

    goto :goto_0

    .line 3054
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateRdsMode(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "sp"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    const-string v0, "FmRxRadio"

    const-string v3, "updateRdsMode()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "fm_pref_rds_enabled_2"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    .line 1125
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "fm_pref_af_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    .line 1128
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending RDS mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending AF mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    const/16 v4, 0x7c

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 1141
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1125
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1134
    goto :goto_1
.end method

.method private updateScanStep(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 1070
    const-string v0, "FmRxRadio"

    const-string v1, "updateScanStep()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_scan_step"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    .line 1076
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending scan step ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setStepSize(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 1088
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    if-nez v0, :cond_0

    .line 1089
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :goto_1
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    .line 1090
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyStep(I)V

    .line 1093
    :cond_0
    return-void

    .line 1082
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1089
    :cond_2
    const/4 v0, 0x5

    goto :goto_1
.end method

.method private updateSetSNRThreshold(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 1410
    const-string v1, "FmRxRadio"

    const-string v2, "updateSetSNRThreshold()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v1, "fm_pref_snr_thres"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    .line 1418
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting SNR Threshold("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->setSNRThreshold(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 1425
    :cond_1
    return-void
.end method

.method private updateWorldRegion(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "sp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1033
    const-string v2, "FmRxRadio"

    const-string v3, "updateWorldRegion()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v2, "fm_pref_world_region"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    .line 1038
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFrequencies()V

    .line 1040
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFreqToService()V

    .line 1041
    const-string v2, "fm_pref_deemphasis"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 1043
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-nez v2, :cond_2

    .line 1044
    const/16 v2, 0x40

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 1050
    :cond_0
    :goto_0
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending region ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending deemphasis ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setWorldRegion(II)I

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    .line 1060
    :cond_1
    return-void

    .line 1045
    :cond_2
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-eq v2, v0, :cond_3

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1048
    :cond_3
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1057
    goto :goto_1
.end method

.method private wiredHeadsetIsOn(Z)V
    .locals 6
    .parameter "isOn"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2896
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2897
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    .line 2900
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    const v4, 0x7f070041

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2901
    .local v0, v:Landroid/view/View;
    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2904
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    const v4, 0x7f070031

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2905
    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2906
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_1

    .line 2907
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2908
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005d

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2909
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2910
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2911
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070060

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2912
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070061

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2913
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2914
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070063

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2921
    :cond_1
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset is on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Fm is on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mPendingAudioPath is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mPendingMute is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2927
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    if-nez v1, :cond_2

    .line 2928
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    .line 2948
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v3

    .line 2901
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 2905
    goto/16 :goto_1

    .line 2932
    :cond_5
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isStarted:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 2933
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last"

    const/16 v3, 0x226a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 2935
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2936
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerUpSequence()V

    .line 2937
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 2938
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchAllChannelStart()V

    .line 2942
    :cond_6
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v1, v5, :cond_2

    .line 2944
    invoke-static {v5, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_2
.end method

.method private zteFmCreateSleepDlg()V
    .locals 4

    .prologue
    .line 3463
    const-string v2, "FmRxRadio"

    const-string v3, "zteFmDeleteStation  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3466
    .local v0, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3468
    .local v1, sleepDialog:Landroid/app/AlertDialog;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$14;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3483
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3485
    return-void
.end method

.method private zteFmTurnTune()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3487
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3488
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3489
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3490
    .local v2, view:Landroid/view/View;
    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    .line 3491
    const v3, 0x7f070056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;

    .line 3494
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    const/16 v4, 0x57

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 3495
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 3496
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 3497
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInteger:Landroid/widget/NumberPicker;

    new-instance v4, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;

    invoke-direct {v4, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$15;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 3522
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 3523
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 3524
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mDecimals:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 3526
    const v3, 0x7f0900a9

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3528
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3530
    const v3, 0x7f090098

    new-instance v4, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;

    invoke-direct {v4, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$16;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3551
    const v3, 0x7f090078

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3553
    return-void
.end method


# virtual methods
.method public AddToFav()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x1b

    const/4 v6, 0x1

    .line 1502
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1503
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v2, v3, :cond_1

    .line 1505
    const v2, 0x7f090081

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1509
    :cond_0
    if-eq v1, v5, :cond_2

    .line 1526
    :goto_1
    return-void

    .line 1503
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_3

    .line 1513
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 1517
    :cond_3
    if-ne v1, v5, :cond_5

    .line 1518
    const v2, 0x7f090080

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1525
    :goto_3
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_1

    .line 1512
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1520
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1523
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090082

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public clearChannel(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 2870
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aput v3, v1, p1

    .line 2871
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2872
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2876
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2877
    return-void
.end method

.method public getChannelName(I)Ljava/lang/String;
    .locals 3
    .parameter "channel"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannels()[I
    .locals 1

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    return-object v0
.end method

.method public getFavChannelsNum()I
    .locals 4

    .prologue
    .line 2828
    const/4 v0, 0x0

    .local v0, num:I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    .line 2829
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2833
    :cond_0
    return v0

    .line 2828
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleButtonEvent(II)V
    .locals 6
    .parameter "buttonId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2730
    packed-switch p1, :pswitch_data_0

    .line 2812
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2734
    :pswitch_1
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    if-eq v3, v4, :cond_0

    .line 2736
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2737
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 2738
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    goto :goto_0

    .line 2740
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0

    .line 2744
    :pswitch_2
    const-string v3, "FmRxRadio"

    const-string v4, "BUTTON_SEARCH"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchAllChannelStart()V

    goto :goto_0

    .line 2748
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 2752
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 2760
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 2768
    :pswitch_6
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 2773
    :pswitch_7
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->buttonSeekFrequencyDown()V

    goto :goto_0

    .line 2778
    :pswitch_8
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->buttonSeekFrequencyUp()V

    goto :goto_0

    .line 2783
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2784
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2785
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2789
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_a
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannelSaveLoc()I

    move-result v2

    .line 2790
    .local v2, loc:I
    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    .line 2791
    const v3, 0x7f09007b

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2795
    :cond_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->needSave()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2796
    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showDialog(I)V

    goto :goto_0

    .line 2798
    :cond_3
    const v3, 0x7f09007c

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2803
    .end local v2           #loc:I
    :pswitch_b
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->setSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 2804
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2805
    .local v1, intent1:Landroid/content/Intent;
    const-string v3, "CURRENT_FREQ"

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2806
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2730
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method

.method public isFavStationExist()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2815
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2816
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_0

    .line 2817
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v3, v4, :cond_1

    .line 2818
    const/4 v2, 0x1

    .line 2821
    :cond_0
    return v2

    .line 2816
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isGetAudioFocus()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 3020
    const/4 v0, 0x5

    .line 3021
    .local v0, REQUEST_AUDIO_FOCUS_TIMES:I
    const/4 v2, 0x0

    .line 3023
    .local v2, count:I
    :cond_0
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFMAudioFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 3024
    .local v1, audioFocus:I
    if-ne v4, v1, :cond_1

    .line 3035
    :goto_0
    return v4

    .line 3028
    :cond_1
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3033
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 3034
    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    .line 3035
    const/4 v4, 0x0

    goto :goto_0

    .line 3029
    :catch_0
    move-exception v3

    .line 3030
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "FmRxRadio"

    const-string v6, "isGetAudioFocus sleep error "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public makeTimeString(J)Ljava/lang/String;
    .locals 7
    .parameter "secs"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3c

    .line 3409
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeTimeString   secs=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3417
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sTimeArgs:[Ljava/lang/Object;

    .line 3418
    .local v0, timeArgs:[Ljava/lang/Object;
    const-wide/16 v1, 0xe10

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    .line 3419
    const/4 v1, 0x1

    div-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3421
    const/4 v1, 0x2

    div-long v2, p1, v4

    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3422
    const/4 v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3423
    const/4 v1, 0x4

    rem-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3424
    const-string v1, "FmRxRadio"

    const-string v2, "makeTimeString   end=="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sFormatter:Ljava/util/Formatter;

    const-string v2, "%2$d:%5$02d"

    invoke-virtual {v1, v2, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 725
    const-string v0, "FmRxRadio"

    const-string v1, "onBackPressed()..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 727
    const-string v0, "FmRxRadio"

    const-string v1, "moveTaskToBack()..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->moveTaskToBack(Z)Z

    .line 755
    :goto_0
    return-void

    .line 730
    :cond_0
    const-string v0, "FmRxRadio"

    const-string v1, "close radio..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 732
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 733
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 2039
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2057
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 2041
    :pswitch_1
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setChannel(I)V

    .line 2042
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 2047
    :pswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showDialog(I)V

    goto :goto_0

    .line 2051
    :pswitch_3
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->clearChannel(I)V

    .line 2052
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 2039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 347
    const-string v3, "FmRxRadio"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 352
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->checkPhoneInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    const v3, 0x7f0900a3

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 355
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    const v3, 0x7f0900a1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 364
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0

    .line 367
    :cond_2
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 369
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 370
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupPending:Z

    .line 371
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAirModeReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAirModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    .line 395
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 396
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    .line 398
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 399
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x1b

    if-ge v0, v3, :cond_3

    .line 402
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    :cond_3
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    .line 404
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 406
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    if-nez v3, :cond_4

    .line 407
    new-instance v3, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 409
    :cond_4
    const-string v3, "FmRxRadio"

    const-string v4, "registerHeadsetPlugReceiver...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 414
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "FMRadio"

    invoke-virtual {p0, v3, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 416
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "IsFirstTimeEntry"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    .line 418
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsFirstTimeEntry:I

    if-eqz v3, :cond_5

    .line 420
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "IsFirstTimeEntry"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    :cond_5
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    check-cast v3, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    .line 423
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v3, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->init(Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;)V

    .line 425
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadMainView()V

    .line 426
    if-nez v1, :cond_0

    .line 427
    invoke-direct {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1979
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1980
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 1981
    .local v0, butId:I
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit8 v2, v2, -0x15

    sput v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    .line 1983
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtnId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1985
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtnId:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mCurrPageIndex:I

    if-nez v2, :cond_2

    .line 1986
    if-le v1, v4, :cond_1

    .line 1987
    add-int/lit8 v2, v1, -0x9

    sput v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    .line 1983
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1989
    :cond_1
    sput v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    goto :goto_1

    .line 1991
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtnId:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mCurrPageIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1992
    if-ge v1, v4, :cond_3

    .line 1993
    add-int/lit8 v2, v1, 0x9

    sput v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    goto :goto_1

    .line 1995
    :cond_3
    sput v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    goto :goto_1

    .line 1997
    :cond_4
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtnId:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mCurrPageIndex:I

    if-ne v2, v6, :cond_0

    .line 1998
    if-ge v1, v4, :cond_5

    .line 1999
    add-int/lit8 v2, v1, 0x12

    sput v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    goto :goto_1

    .line 2001
    :cond_5
    add-int/lit8 v2, v1, 0x9

    sput v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    goto :goto_1

    .line 2005
    :cond_6
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu   longPressChannelIndex=== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    if-ltz v2, :cond_7

    sget v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_8

    .line 2033
    :cond_7
    :goto_2
    return-void

    .line 2009
    :cond_8
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 2010
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2012
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v6, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2014
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f09007d

    const v5, 0x7f09007a

    const v4, 0x7f090079

    const v3, 0x7f020029

    .line 3113
    const/4 v2, 0x0

    .line 3114
    .local v2, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 3148
    :goto_0
    return-object v2

    .line 3116
    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->createSaveChannelDialog()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3117
    goto :goto_0

    .line 3119
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3120
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3121
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3122
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3123
    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3125
    goto :goto_0

    .line 3127
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->createStartUpDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 3129
    goto :goto_0

    .line 3133
    :pswitch_3
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->createEditChannelDialog()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3134
    goto :goto_0

    .line 3136
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3137
    .local v1, builder0:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3138
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3139
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3140
    invoke-virtual {v1, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3141
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3142
    goto :goto_0

    .line 3114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f0900a8

    const/4 v3, 0x0

    .line 1792
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1793
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1794
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    .line 1797
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1798
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005d

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1799
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070060

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1800
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070061

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1801
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1802
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f07005f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1803
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070062

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1804
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const v2, 0x7f070063

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1805
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMenu:Landroid/view/Menu;

    const/16 v2, 0xb

    invoke-interface {v1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1807
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 672
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 674
    const-string v0, "FmRxRadio"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAirModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAirModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 702
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_3

    .line 708
    const-string v0, "FmRxRadio"

    const-string v1, "Finishing FmReceiver proxy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->unregisterEventHandler()V

    .line 711
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->finish()V

    .line 712
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    if-eqz v0, :cond_4

    .line 715
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 716
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 717
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 720
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 722
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const v10, 0x7f090095

    const v9, 0x7f090094

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1868
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1973
    :cond_0
    :goto_0
    return v4

    .line 1870
    :sswitch_0
    const-string v5, "FmRxRadio"

    const-string v6, "click menuItem: mute"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    .line 1872
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    if-eqz v3, :cond_2

    .line 1873
    const v3, 0x7f020030

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1874
    const v3, 0x7f090090

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1876
    :cond_2
    const v3, 0x7f02002f

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1877
    const v3, 0x7f09008f

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1882
    :sswitch_1
    const-string v3, "FmRxRadio"

    const-string v5, "click menuItem: power_off"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1887
    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    if-eq v3, v4, :cond_0

    .line 1889
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 1890
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    goto :goto_0

    .line 1909
    :cond_3
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0

    .line 1913
    :sswitch_2
    const-string v3, "FmRxRadio"

    const-string v5, "click menuItem: search"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchAllChannelStart()V

    goto :goto_0

    .line 1918
    :sswitch_3
    const-string v3, "FmRxRadio"

    const-string v5, "click menuItem: channels"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->setSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 1920
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1921
    .local v2, intent1:Landroid/content/Intent;
    const-string v3, "CURRENT_FREQ"

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1922
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1926
    .end local v2           #intent1:Landroid/content/Intent;
    :sswitch_4
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "click menuItem: audio_path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v5, v8, :cond_4

    .line 1928
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 1931
    invoke-static {v4, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1934
    invoke-static {p0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1936
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1937
    :cond_4
    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v5, v4, :cond_0

    .line 1938
    iput v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 1941
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1944
    invoke-static {p0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1946
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1950
    :sswitch_5
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->AddToFav()V

    goto/16 :goto_0

    .line 1954
    :sswitch_6
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1955
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v5, 0x1b

    if-ge v1, v5, :cond_0

    .line 1956
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v5, v6, :cond_5

    .line 1957
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->clearChannel(I)V

    .line 1958
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v3}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto/16 :goto_0

    .line 1955
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1964
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    :sswitch_7
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->zteFmCreateSleepDlg()V

    goto/16 :goto_0

    .line 1967
    :sswitch_8
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->endSleepTimer()V

    goto/16 :goto_0

    .line 1970
    :sswitch_9
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->zteFmTurnTune()V

    goto/16 :goto_0

    .line 1868
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_8
        0x7f07005b -> :sswitch_0
        0x7f07005c -> :sswitch_1
        0x7f07005d -> :sswitch_2
        0x7f07005e -> :sswitch_3
        0x7f07005f -> :sswitch_4
        0x7f070060 -> :sswitch_5
        0x7f070061 -> :sswitch_6
        0x7f070062 -> :sswitch_7
        0x7f070063 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 628
    const-string v1, "FmRxRadio"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 641
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last"

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 643
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    if-eqz v1, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showNotification()V

    .line 658
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 659
    return-void

    .line 649
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f070061

    const v7, 0x7f070060

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1814
    const v2, 0x7f07005b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    if-eqz v2, :cond_2

    const v2, 0x7f090090

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1817
    const v2, 0x7f07005d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f0900a6

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1819
    const v2, 0x7f07005e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f090093

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1821
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f0900a4

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1823
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f0900a5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1826
    const v2, 0x7f070062

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f0900a7

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1828
    const v2, 0x7f070063

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f0900a9

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1830
    const-string v2, "FmRxRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPre="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1833
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 1837
    :goto_1
    const v2, 0x7f07005f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v2, v9, :cond_4

    const v2, 0x7f090094

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1841
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSleepTimerActive()Z

    move-result v1

    .line 1843
    .local v1, sleepActive:Z
    const v2, 0x7f070062

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1844
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1846
    if-nez v1, :cond_5

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1848
    :cond_0
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1849
    if-eqz v0, :cond_1

    .line 1851
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1854
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFavStationExist()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1855
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1856
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1863
    :goto_5
    return v3

    .line 1814
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #sleepActive:Z
    :cond_2
    const v2, 0x7f09008f

    goto/16 :goto_0

    .line 1835
    :cond_3
    iput v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    goto :goto_1

    .line 1837
    :cond_4
    const v2, 0x7f090095

    goto :goto_2

    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v1       #sleepActive:Z
    :cond_5
    move v2, v4

    .line 1846
    goto :goto_3

    :cond_6
    move v2, v4

    .line 1851
    goto :goto_4

    .line 1858
    :cond_7
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1859
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 4
    .parameter "ProxyObject"

    .prologue
    .line 1533
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProxyAvailable bFinishCalled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->bFinishCalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_0

    .line 1535
    check-cast p1, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 1536
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_2

    .line 1537
    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, error:Ljava/lang/String;
    const-string v1, "FmRxRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    .line 1576
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1543
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    if-nez v1, :cond_3

    .line 1544
    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    .line 1545
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 1548
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1549
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFinish:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->bFinishCalled:Z

    if-eqz v1, :cond_5

    .line 1550
    :cond_4
    const-string v1, "FmRxRadio"

    const-string v2, "Finish already initiated here. Hence exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    :cond_5
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetOn:Z

    if-eqz v1, :cond_6

    .line 1557
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last"

    const/16 v3, 0x226a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1559
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerUpSequence()V

    .line 1563
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isStarted:Z

    .line 1572
    :goto_1
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInCall:Z

    if-eqz v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1567
    :cond_7
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupComplete()V

    .line 1568
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getStatus()I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 589
    const-string v0, "FmRxRadio"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    .line 596
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->bFinishCalled:Z

    if-nez v0, :cond_0

    .line 600
    const-string v0, "FmRxRadio"

    const-string v1, "Getting FmReceiver proxy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p0, p0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 605
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setVolumeControlStream(I)V

    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 624
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 2084
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const-string v0, "channel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateChannels()V

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    const-string v0, "current_freq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2101
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateCurrentChannel()V

    goto :goto_0

    .line 2103
    :cond_2
    const-string v0, "fm_pref_audio_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2104
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2105
    :cond_3
    const-string v0, "fm_pref_audio_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2106
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioPath(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2107
    :cond_4
    const-string v0, "fm_pref_scan_step"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2108
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateScanStep(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2109
    :cond_5
    const-string v0, "fm_pref_rds_enabled_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2110
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2111
    :cond_6
    const-string v0, "fm_pref_af_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2112
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2113
    :cond_7
    const-string v0, "fm_pref_world_region"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2114
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2115
    :cond_8
    const-string v0, "fm_pref_deemphasis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2116
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2117
    :cond_9
    const-string v0, "fm_pref_live_polling"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2118
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2119
    :cond_a
    const-string v0, "fm_pref_live_polling_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2120
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2121
    :cond_b
    const-string v0, "fm_pref_nfl_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2122
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateNflEstimate(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 2123
    :cond_c
    const-string v0, "fm_pref_snr_thres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateSetSNRThreshold(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 585
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 664
    const-string v0, "FmRxRadio"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 668
    return-void
.end method

.method public powerDownSequence()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 937
    const-string v5, "FmRxRadio"

    const-string v6, "powerDownSequence()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->enableFMAudio(Z)V

    .line 943
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 944
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 945
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 946
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 947
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 948
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 949
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 950
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 952
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 953
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->endSleepTimer()V

    .line 956
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v5, :cond_0

    .line 957
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v5, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioPath(I)I

    .line 958
    :cond_0
    iget-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    if-eqz v5, :cond_1

    .line 959
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStop()V

    .line 971
    :cond_1
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v2

    .line 972
    .local v2, status:I
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 973
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 974
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 975
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090073

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nStatus = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 977
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 979
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 988
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_2
    :goto_0
    return v3

    .line 983
    :cond_3
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-eqz v4, :cond_2

    .line 984
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 985
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v4, "last"

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public searchAllChannelStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1580
    const-string v0, "FmRxRadio"

    const-string v1, "searchAllChannelStart..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    .line 1582
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    .line 1583
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 1584
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1590
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1592
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1598
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1606
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1609
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setFrequency(I)V

    .line 1611
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1612
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    .line 1617
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1631
    return-void

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public searchEnd()V
    .locals 13

    .prologue
    const/16 v7, 0x32

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1667
    const-string v8, "FmRxRadio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "searchEnd...total radio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    if-le v8, v7, :cond_0

    move v6, v7

    .line 1671
    .local v6, searchedchannels:I
    :goto_0
    iget-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1672
    iget-object v8, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1673
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 1674
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channellist_item"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1673
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1668
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #j:I
    .end local v6           #searchedchannels:I
    :cond_0
    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    goto :goto_0

    .line 1676
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #j:I
    .restart local v6       #searchedchannels:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_2

    .line 1677
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1678
    .local v1, freq:I
    const-string v7, "FmRxRadio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radio"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-float v9, v1

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channellist_item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1676
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1681
    .end local v1           #freq:I
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1683
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_3
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->searchStopAndAddtoFav()V

    .line 1684
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 1685
    .local v5, msg0:Landroid/os/Message;
    const/16 v7, 0xe

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1686
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1687
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1688
    const v7, 0x7f09008d

    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    iget v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1692
    iput-boolean v11, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    .line 1693
    iput v11, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    .line 1694
    iput-boolean v12, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 1695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1696
    .local v4, msg:Landroid/os/Message;
    const/16 v7, 0x14

    iput v7, v4, Landroid/os/Message;->what:I

    .line 1697
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1698
    return-void
.end method

.method public searchStop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v5, 0x32

    .line 1451
    const-string v6, "FmRxRadio"

    const-string v7, "searchStop..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    if-le v6, v5, :cond_0

    move v4, v5

    .line 1457
    .local v4, searchedchannels:I
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1458
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1459
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channellist_item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1454
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #j:I
    .end local v4           #searchedchannels:I
    :cond_0
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    goto :goto_0

    .line 1462
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #j:I
    .restart local v4       #searchedchannels:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 1463
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1464
    .local v1, freq:I
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-float v7, v1

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channellist_item"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1467
    .end local v1           #freq:I
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1471
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_3
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_4

    .line 1472
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1474
    :cond_4
    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    .line 1475
    iput v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    .line 1476
    return-void
.end method

.method public searchStopAndAddtoFav()V
    .locals 9

    .prologue
    const/16 v5, 0x32

    .line 1479
    const-string v6, "FmRxRadio"

    const-string v7, "searchStopAndAddtoFav..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    if-le v6, v5, :cond_0

    move v4, v5

    .line 1483
    .local v4, searchedchannels:I
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1484
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1485
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1485
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1480
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #j:I
    .end local v4           #searchedchannels:I
    :cond_0
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchRadioCount:I

    goto :goto_0

    .line 1488
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #j:I
    .restart local v4       #searchedchannels:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 1489
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRadios:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1490
    .local v1, freq:I
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radio fav"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-float v7, v1

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v7, v1, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-int/lit8 v7, v1, 0x64

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1494
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateChannels()V

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1499
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #freq:I
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_2
    return-void
.end method

.method public selectChannel(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 2880
    const-string v0, "FmRxRadio_TEST---- selectChannel"

    const-string v1, "run in the selectChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2882
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 2883
    return-void
.end method

.method public setChannel(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 2847
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1b

    if-ge v1, v2, :cond_1

    .line 2848
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v2, v3, :cond_0

    .line 2849
    const v2, 0x7f09009c

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2867
    :goto_1
    return-void

    .line 2847
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2855
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    aput v3, v2, p1

    .line 2856
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2857
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2866
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public setFrequency(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 2887
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrequency..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2889
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 2890
    return-void
.end method

.method public showSleeptime(Ljava/lang/String;J)V
    .locals 6
    .parameter "timeStr"
    .parameter "seconds"

    .prologue
    const/4 v2, 0x4

    .line 3430
    const/4 v1, 0x4

    .line 3431
    .local v1, vis:I
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSleeptime   seconds=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSleeptime   mSleepMsgTV=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v5, v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    const-wide/16 v3, 0x3c

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    .line 3437
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v3, v3, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 3438
    .local v0, nowVis:I
    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    .line 3446
    .end local v0           #nowVis:I
    :goto_0
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSleeptime   vis=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3448
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-object v2, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3450
    return-void

    .restart local v0       #nowVis:I
    :cond_0
    move v1, v2

    .line 3438
    goto :goto_0

    .line 3442
    .end local v0           #nowVis:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateStationSearch(I)V
    .locals 10
    .parameter "direction"

    .prologue
    const/16 v5, 0x80

    const/16 v3, 0x69

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1291
    const-string v0, "FmRxRadio"

    const-string v1, "updateStationSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    .line 1296
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending search direction ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", start freq : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_2

    .line 1304
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v5, :cond_4

    .line 1306
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-gt v0, v1, :cond_3

    .line 1308
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1309
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-le v0, v1, :cond_0

    .line 1310
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1312
    :cond_0
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    .line 1338
    .local v2, endFrequency:I
    :goto_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v5, :cond_7

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isSearching:Z

    if-eqz v0, :cond_7

    .line 1340
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanMethod:I

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsType:I

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStationCombo(IIIIIZII)I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v9

    :cond_1
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 1369
    .end local v2           #endFrequency:I
    :cond_2
    :goto_1
    return-void

    .line 1317
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1318
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    .restart local v2       #endFrequency:I
    goto :goto_0

    .line 1322
    .end local v2           #endFrequency:I
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-gt v0, v1, :cond_6

    .line 1324
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1325
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    if-ge v0, v1, :cond_5

    .line 1326
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1328
    :cond_5
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .restart local v2       #endFrequency:I
    goto :goto_0

    .line 1333
    .end local v2           #endFrequency:I
    :cond_6
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1334
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .restart local v2       #endFrequency:I
    goto :goto_0

    .line 1356
    :cond_7
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-virtual {v0, v1, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    if-eqz v0, :cond_8

    :goto_2
    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    goto :goto_1

    :cond_8
    move v9, v6

    goto :goto_2
.end method
