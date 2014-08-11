.class public Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
.super Landroid/widget/FrameLayout;
.source "FmReceiveView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;


# static fields
.field private static final DEBUG:Z = true

.field static HIGH_SIGNAL_STRENGTH:I = 0x0

.field static LOW_SIGNAL_STRENGTH:I = 0x0

.field static MEDIUM_SIGNAL_STRENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmReceiveView"

.field private static final TAG_TEST:Ljava/lang/String; = "FmReceiveViewTEST---"

.field private static final digitDrawables:[I


# instance fields
.field private FmMainView:Lcom/broadcom/bt/app/fm/rx/FmRadio;

.field private final MOVE_DIRECTION_NEXT:I

.field private final MOVE_DIRECTION_PREV:I

.field private final ZTE_FM_CHANNEL_BTN_NUM:I

.field private final ZTE_FM_FAVORITES_STATIONS_MAX_NUM:I

.field private final ZTE_FM_FAVORITES_STATIONS_MAX_PAGE:I

.field private final ZTE_FM_FAVORITES_STATIONS_NUM_OF_PAGE:I

.field private afStateView:Landroid/widget/ImageView;

.field private channel_cursor:Landroid/widget/ImageView;

.field private dialView:Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

.field private digit1:Landroid/widget/ImageView;

.field private digit2:Landroid/widget/ImageView;

.field private digit3:Landroid/widget/ImageView;

.field private digit4:Landroid/widget/ImageView;

.field private digit5:Landroid/widget/ImageView;

.field private frequency:I

.field private frequencyStep:I

.field private frequency_lower:Landroid/widget/TextView;

.field private frequency_upper:Landroid/widget/TextView;

.field private lastFrequencyBeforeSliderDown:I

.field private mChanelInstruction:Landroid/widget/TextView;

.field private mChanelZone:Lcom/broadcom/bt/app/fm/drag/ChanelZone;

.field private mChannelBtn:[Landroid/widget/Button;

.field public mChannelBtnId:[I

.field private mChannelHolder:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

.field private mContext:Landroid/content/Context;

.field private mCurrPageIndex:I

.field private mDialViewSlideCallback:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

.field public mFavoritesChannelSlide:Lcom/broadcom/bt/app/fm/drag/SlideLayout;

.field private mFavoritesChannelSlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

.field private mFmMenu:Landroid/widget/ImageButton;

.field private mFmOnOff:Landroid/widget/ImageButton;

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mImage_frequency_tv:Lcom/broadcom/bt/app/fm/drag/DragContainer;

.field private mInCall:Z

.field private mIsMute:Z

.field private mOldAutomatic:I

.field private mPresetButtonAnimation:Landroid/view/animation/Animation;

.field private mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

.field private mSearchProgressDialog:Landroid/app/ProgressDialog;

.field public mSleepMsgTV:Landroid/widget/TextView;

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mStationFrequencySlide:Lcom/broadcom/bt/app/fm/drag/SlideLayout;

.field private mStationFrequencySlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

.field private mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

.field private mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mzteFmDragContainerViewClickListener:Landroid/view/View$OnLongClickListener;

.field private mzteFmFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

.field public page_number_1:Landroid/widget/ImageView;

.field public page_number_2:Landroid/widget/ImageView;

.field public page_number_3:Landroid/widget/ImageView;

.field private rdsPs:Ljava/lang/String;

.field private rdsPsView:Landroid/widget/TextView;

.field private rdsPty:Ljava/lang/String;

.field private rdsPtyView:Landroid/widget/TextView;

.field private rdsPtyn:Ljava/lang/String;

.field private rdsPtynView:Landroid/widget/TextView;

.field private rdsRt:Ljava/lang/String;

.field private rdsRtView:Landroid/widget/TextView;

.field private rdsStateView:Landroid/widget/ImageView;

.field private rssiStateView:Landroid/widget/ImageView;

.field private slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x53

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->HIGH_SIGNAL_STRENGTH:I

    .line 99
    const/16 v0, 0x5b

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MEDIUM_SIGNAL_STRENGTH:I

    .line 100
    const/16 v0, 0x63

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->LOW_SIGNAL_STRENGTH:I

    .line 102
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    return-void

    :array_0
    .array-data 0x4
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsMute:Z

    .line 138
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z

    .line 144
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mPresetButtonAnimation:Landroid/view/animation/Animation;

    .line 161
    const/16 v0, 0x1b

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->ZTE_FM_CHANNEL_BTN_NUM:I

    .line 162
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    .line 163
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 165
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 166
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelHolder:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    .line 168
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mStationFrequencySlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    .line 169
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    .line 171
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mDialViewSlideCallback:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    .line 172
    const/16 v0, 0x9

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->ZTE_FM_FAVORITES_STATIONS_NUM_OF_PAGE:I

    .line 173
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->ZTE_FM_FAVORITES_STATIONS_MAX_PAGE:I

    .line 174
    const/16 v0, 0x1b

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->ZTE_FM_FAVORITES_STATIONS_MAX_NUM:I

    .line 177
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MOVE_DIRECTION_NEXT:I

    .line 178
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MOVE_DIRECTION_PREV:I

    .line 179
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/widget/Button;

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtn:[Landroid/widget/Button;

    .line 182
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelBtnId:[I

    .line 609
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;-><init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mzteFmFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    .line 617
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$5;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$5;-><init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mzteFmDragContainerViewClickListener:Landroid/view/View$OnLongClickListener;

    .line 199
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    .line 200
    return-void

    .line 182
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x7t 0x7ft
        0x5t 0x0t 0x7t 0x7ft
        0x6t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x7t 0x7ft
        0xct 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mPresetButtonAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/drag/DragTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/drag/DragContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mImage_frequency_tv:Lcom/broadcom/bt/app/fm/drag/DragContainer;

    return-object v0
.end method

.method private dismissSearchProgressDialog()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng  dismissSearchProgressDialog(),  dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 512
    :cond_0
    return-void
.end method

.method private updatePressedButton()V
    .locals 9

    .prologue
    const v8, 0x7f080004

    .line 671
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v6}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v2

    .line 672
    .local v2, channels:[I
    const/16 v5, 0x15

    .local v5, i:I
    :goto_0
    const/16 v6, 0x2f

    if-gt v5, v6, :cond_2

    .line 673
    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 675
    .local v0, b:Landroid/widget/Button;
    add-int/lit8 v6, v5, -0x15

    add-int/lit8 v1, v6, 0x1

    .line 676
    .local v1, channel:I
    add-int/lit8 v6, v1, -0x1

    aget v4, v2, v6

    .line 678
    .local v4, freq:I
    if-eqz v4, :cond_0

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    if-ne v4, v6, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 680
    .local v3, color:I
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 681
    const v6, 0x7f02001e

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 672
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 686
    .end local v3           #color:I
    :cond_0
    if-nez v4, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 689
    .restart local v3       #color:I
    const v6, 0x7f020008

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 691
    .end local v3           #color:I
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 692
    .restart local v3       #color:I
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 693
    const v6, 0x7f02001d

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 697
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #channel:I
    .end local v3           #color:I
    .end local v4           #freq:I
    :cond_2
    return-void
.end method

.method private zteFmCalcNextDisplayPageIndex(I)V
    .locals 5
    .parameter "slideDirection"

    .prologue
    const/4 v4, 0x0

    .line 539
    const-string v1, "FmReceiveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zteFmCalcNextDisplayPageIndex   mCurrPageIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, currPageNum:I
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmCalcPageNum()I

    move-result v0

    .line 543
    if-nez v0, :cond_1

    .line 545
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 549
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    .line 550
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    if-lt v1, v0, :cond_0

    .line 552
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    goto :goto_0

    .line 555
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 557
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    .line 558
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    if-gez v1, :cond_0

    .line 560
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    goto :goto_0
.end method

.method private zteFmCalcPageNum()I
    .locals 7

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, favoSationsNum:I
    const/4 v0, 0x0

    .line 517
    .local v0, currPageNum:I
    const/16 v1, 0x1b

    .line 518
    const-string v4, "FmReceiveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zteFmCalcPageNum getChannels num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-nez v1, :cond_0

    .line 521
    const/4 v4, 0x0

    .line 535
    :goto_0
    return v4

    .line 524
    :cond_0
    div-int/lit8 v2, v1, 0x9

    .line 525
    .local v2, value1:I
    rem-int/lit8 v3, v1, 0x9

    .line 526
    .local v3, value2:I
    if-eqz v2, :cond_1

    if-eqz v3, :cond_2

    .line 528
    :cond_1
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v4, v0

    .line 535
    goto :goto_0

    .line 532
    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private zteFmSetDragerHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->setSaveDrager(Z)V

    .line 631
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mImage_frequency_tv:Lcom/broadcom/bt/app/fm/drag/DragContainer;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragContainer;->setDragger(Lcom/broadcom/bt/app/fm/drag/DragController;)V

    .line 632
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragTextView;->setDragger(Lcom/broadcom/bt/app/fm/drag/DragController;)V

    .line 633
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChanelZone:Lcom/broadcom/bt/app/fm/drag/ChanelZone;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragLayer;->setDragListener(Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlide:Lcom/broadcom/bt/app/fm/drag/SlideLayout;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->setOnPanelListener(Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;)V

    .line 641
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlide:Lcom/broadcom/bt/app/fm/drag/SlideLayout;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/fm/drag/SlideLayout;->setSlideStatus(Z)V

    .line 642
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->dialView:Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->setSlideStatus(Z)V

    .line 643
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->dialView:Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mDialViewSlideCallback:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;->setSlideCallback(Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;)V

    .line 644
    return-void
.end method

.method private zteFmSetListener()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "FmReceiveView"

    const-string v1, ">>> zteFmSetListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mStationFrequencySlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-nez v0, :cond_0

    .line 357
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng zteFmSetListener() new SlideLayout.OnStationLayoutListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$1;-><init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mStationFrequencySlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    if-nez v0, :cond_1

    .line 379
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng zteFmSetListener() new SlideLayout.OnStationLayoutListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$2;-><init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlideListener:Lcom/broadcom/bt/app/fm/drag/SlideLayout$OnStationLayoutListener;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mDialViewSlideCallback:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    if-nez v0, :cond_2

    .line 398
    const-string v0, "FmReceiveView"

    const-string v1, "wangdapeng zteFmSetListener() new DialViewLayout.OnSlideCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$3;-><init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mDialViewSlideCallback:Lcom/broadcom/bt/app/fm/drag/DialViewLayout$OnSlideCallback;

    .line 421
    :cond_2
    const-string v0, "FmReceiveView"

    const-string v1, "<<< zteFmSetListener()<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private zteFmSetupPresetLayout()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 425
    const-string v3, "FmReceiveView"

    const-string v4, "zteFmSetupPresetLayout   =="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v0, 0x1b

    .line 427
    .local v0, stationCount:I
    const-string v3, "FmReceiveView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zteFmSetupPresetLayout getChannels num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz v0, :cond_0

    .line 430
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 431
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChanelInstruction:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_1:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_2:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_3:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmGetViewFlipperDisplayedChild()I

    move-result v1

    .line 437
    .local v1, viewFChildIndex:I
    const-string v3, "FmReceiveView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zteFmSetupPresetLayout  viewFChildIndex =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    invoke-virtual {p0, v3, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetDisplayFavoSationsPage(II)V

    .line 439
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetCurrentPageImageNumber(I)V

    .line 454
    .end local v1           #viewFChildIndex:I
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 444
    iput v6, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    .line 445
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmGetViewFlipperDisplayedChild()I

    move-result v2

    .line 446
    .local v2, viewFChildIndex2:I
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 447
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChanelInstruction:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;)V
    .locals 12
    .parameter "eventHandler"

    .prologue
    const v11, 0x7f070026

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 205
    const-string v5, "FmReceiveView"

    const-string v6, "FmReceiveView(ctx, eventHandler)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    .line 214
    invoke-virtual {p0, v11}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

    .line 216
    const v5, 0x7f070027

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mImage_frequency_tv:Lcom/broadcom/bt/app/fm/drag/DragContainer;

    .line 217
    const v5, 0x7f07003b

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 220
    invoke-virtual {p0, v11}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;

    .line 221
    const v5, 0x7f070035

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/DragLayer;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSaveDragLayer:Lcom/broadcom/bt/app/fm/drag/DragLayer;

    .line 222
    const v5, 0x7f070038

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/ChanelZone;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChanelZone:Lcom/broadcom/bt/app/fm/drag/ChanelZone;

    .line 224
    const v5, 0x7f07003a

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/SlideLayout;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mFavoritesChannelSlide:Lcom/broadcom/bt/app/fm/drag/SlideLayout;

    .line 225
    const v5, 0x7f070039

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChanelInstruction:Landroid/widget/TextView;

    .line 226
    const v5, 0x7f070037

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->dialView:Lcom/broadcom/bt/app/fm/drag/DialViewLayout;

    .line 229
    const v5, 0x7f070032

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mSleepMsgTV:Landroid/widget/TextView;

    .line 230
    const v5, 0x7f07003c

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_1:Landroid/widget/ImageView;

    .line 231
    const v5, 0x7f07003d

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_2:Landroid/widget/ImageView;

    .line 232
    const v5, 0x7f07003e

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_3:Landroid/widget/ImageView;

    .line 234
    const v5, 0x7f070033

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency_lower:Landroid/widget/TextView;

    .line 235
    const v5, 0x7f070034

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency_upper:Landroid/widget/TextView;

    .line 236
    const v5, 0x7f070046

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    .line 237
    const v5, 0x7f070047

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    .line 238
    const v5, 0x7f070048

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit3:Landroid/widget/ImageView;

    .line 239
    const v5, 0x7f070049

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit4:Landroid/widget/ImageView;

    .line 240
    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    .line 241
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v5, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setListener(Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;)V

    .line 243
    invoke-static {}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->getInstance()Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mChannelHolder:Lcom/broadcom/bt/app/fm/rx/ChannelHolder;

    .line 245
    const v5, 0x7f070043

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rssiStateView:Landroid/widget/ImageView;

    .line 246
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    .line 247
    const v5, 0x7f070045

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->afStateView:Landroid/widget/ImageView;

    .line 248
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->afStateView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetListener()V

    .line 273
    const/16 v5, 0x1b

    new-array v0, v5, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v0, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v0, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    aput-object v5, v0, v7

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v0, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_4

    aput-object v5, v0, v8

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v0, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v0, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v0, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v0, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v0, v5

    const/16 v5, 0xa

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v0, v5

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v0, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v0, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v0, v5

    const/16 v5, 0xe

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v0, v5

    const/16 v5, 0xf

    new-array v6, v7, [I

    fill-array-data v6, :array_f

    aput-object v6, v0, v5

    const/16 v5, 0x10

    new-array v6, v7, [I

    fill-array-data v6, :array_10

    aput-object v6, v0, v5

    const/16 v5, 0x11

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v0, v5

    const/16 v5, 0x12

    new-array v6, v7, [I

    fill-array-data v6, :array_12

    aput-object v6, v0, v5

    const/16 v5, 0x13

    new-array v6, v7, [I

    fill-array-data v6, :array_13

    aput-object v6, v0, v5

    const/16 v5, 0x14

    new-array v6, v7, [I

    fill-array-data v6, :array_14

    aput-object v6, v0, v5

    const/16 v5, 0x15

    new-array v6, v7, [I

    fill-array-data v6, :array_15

    aput-object v6, v0, v5

    const/16 v5, 0x16

    new-array v6, v7, [I

    fill-array-data v6, :array_16

    aput-object v6, v0, v5

    const/16 v5, 0x17

    new-array v6, v7, [I

    fill-array-data v6, :array_17

    aput-object v6, v0, v5

    const/16 v5, 0x18

    new-array v6, v7, [I

    fill-array-data v6, :array_18

    aput-object v6, v0, v5

    const/16 v5, 0x19

    new-array v6, v7, [I

    fill-array-data v6, :array_19

    aput-object v6, v0, v5

    const/16 v5, 0x1a

    new-array v6, v7, [I

    fill-array-data v6, :array_1a

    aput-object v6, v0, v5

    .line 313
    .local v0, buttonTranslationTable:[[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 314
    aget-object v5, v0, v2

    aget v1, v5, v9

    .line 315
    .local v1, from:I
    aget-object v5, v0, v2

    aget v3, v5, v10

    .line 316
    .local v3, to:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 317
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 318
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v1           #from:I
    .end local v3           #to:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetListener()V

    .line 323
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetDragerHandler()V

    .line 324
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetupPresetLayout()V

    .line 325
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    .line 327
    return-void

    .line 273
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x6t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x7t 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x8t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x9t 0x0t 0x7t 0x7ft
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xat 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xbt 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xct 0x0t 0x7t 0x7ft
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xet 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xft 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x10t 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x11t 0x0t 0x7t 0x7ft
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x12t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x13t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x14t 0x0t 0x7t 0x7ft
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x15t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x16t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x18t 0x0t 0x7t 0x7ft
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x19t 0x0t 0x7t 0x7ft
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x1at 0x0t 0x7t 0x7ft
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x1bt 0x0t 0x7t 0x7ft
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x1ct 0x0t 0x7t 0x7ft
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x1dt 0x0t 0x7t 0x7ft
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x1et 0x0t 0x7t 0x7ft
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x20t 0x0t 0x7t 0x7ft
        0x2ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 333
    .local v0, buttonId:I
    const-string v2, "FmReceiveView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v2, 0x2f

    if-gt v0, v2, :cond_1

    .line 335
    add-int/lit8 v1, v0, -0x15

    .line 336
    .local v1, position:I
    const-string v2, "FmReceiveViewTEST---"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v2

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2, v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->selectChannel(I)V

    .line 340
    const-string v2, "FmReceiveViewTEST---"

    const-string v3, "getChannels != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v1           #position:I
    :goto_0
    return-void

    .line 342
    .restart local v1       #position:I
    :cond_0
    const-string v2, "FmReceiveViewTEST---"

    const-string v3, "getChannel == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2, v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->setChannel(I)V

    .line 344
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 347
    .end local v1           #position:I
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->handleButtonEvent(II)V

    goto :goto_0
.end method

.method public onSliderCancel()V
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->lastFrequencyBeforeSliderDown:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 889
    return-void
.end method

.method public onSliderDown()V
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->lastFrequencyBeforeSliderDown:I

    .line 885
    return-void
.end method

.method public onSliderDrag(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 894
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    if-eq p1, v0, :cond_0

    .line 895
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyDigits(I)V

    .line 898
    :cond_0
    return-void
.end method

.method public onSliderSet(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->setFrequency(I)V

    .line 902
    return-void
.end method

.method public declared-synchronized setAfState(I)V
    .locals 2
    .parameter "afState"

    .prologue
    .line 794
    monitor-enter p0

    if-nez p1, :cond_1

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->afStateView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 796
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 797
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->afStateView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setFrequencyDigits(I)V
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 719
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    .line 722
    div-int/lit8 p1, p1, 0xa

    .line 723
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit4:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    rem-int/lit8 v6, p1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 724
    div-int/lit8 p1, p1, 0xa

    .line 725
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit3:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    rem-int/lit8 v6, p1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 726
    div-int/lit8 p1, p1, 0xa

    .line 727
    rem-int/lit8 v1, p1, 0xa

    .line 728
    .local v1, d2:I
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 729
    div-int/lit8 p1, p1, 0xa

    .line 730
    rem-int/lit8 v0, p1, 0xa

    .line 731
    .local v0, d1:I
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    if-nez v0, :cond_1

    .line 735
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 736
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 737
    goto :goto_0

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setFrequencyGraphics(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 711
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    .line 712
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setFreq(I)V

    .line 713
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyDigits(I)V

    .line 714
    const-string v0, "FmReceiveViewTEST---setFrequencyGraphics"

    const-string v1, "run the updatePressedButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updatePressedButton()V

    .line 716
    return-void
.end method

.method setFrequencyStep(I)V
    .locals 0
    .parameter "frequencyStep"

    .prologue
    .line 868
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequencyStep:I

    .line 869
    return-void
.end method

.method setMinMaxFrequencies(II)V
    .locals 5
    .parameter "minFreq"
    .parameter "maxFreq"

    .prologue
    const-wide/high16 v3, 0x4059

    .line 862
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setFrequencyRange(II)V

    .line 863
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency_lower:Landroid/widget/TextView;

    int-to-double v1, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency_upper:Landroid/widget/TextView;

    int-to-double v1, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    return-void
.end method

.method public declared-synchronized setMutedState(ZZ)V
    .locals 1
    .parameter "isMute"
    .parameter "inCall"

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsMute:Z

    .line 809
    iput-boolean p2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsState(I)V
    .locals 2
    .parameter "rdsState"

    .prologue
    .line 774
    monitor-enter p0

    if-nez p1, :cond_1

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 776
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 777
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 779
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 780
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->rdsStateView:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setSignalStrength(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->LOW_SIGNAL_STRENGTH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v1, :cond_0

    .line 755
    const v0, 0x7f020071

    .line 764
    .local v0, resId:I
    :goto_0
    monitor-exit p0

    return-void

    .line 756
    .end local v0           #resId:I
    :cond_0
    :try_start_1
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MEDIUM_SIGNAL_STRENGTH:I

    if-le p1, v1, :cond_1

    .line 757
    const v0, 0x7f02006f

    .restart local v0       #resId:I
    goto :goto_0

    .line 758
    .end local v0           #resId:I
    :cond_1
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->HIGH_SIGNAL_STRENGTH:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le p1, v1, :cond_2

    .line 759
    const v0, 0x7f020070

    .restart local v0       #resId:I
    goto :goto_0

    .line 761
    .end local v0           #resId:I
    :cond_2
    const v0, 0x7f02006e

    .restart local v0       #resId:I
    goto :goto_0

    .line 754
    .end local v0           #resId:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateChannelButtons()V
    .locals 8

    .prologue
    .line 648
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v6}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v2

    .line 649
    .local v2, channels:[I
    const/16 v5, 0x15

    .local v5, i:I
    :goto_0
    const/16 v6, 0x2f

    if-gt v5, v6, :cond_1

    .line 650
    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 651
    .local v0, b:Landroid/widget/Button;
    add-int/lit8 v6, v5, -0x15

    add-int/lit8 v1, v6, 0x1

    .line 653
    .local v1, channel:I
    add-int/lit8 v6, v1, -0x1

    aget v4, v2, v6

    .line 655
    .local v4, freq:I
    if-nez v4, :cond_0

    .line 659
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    const v6, 0x7f020008

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 649
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 663
    .local v3, color:I
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 664
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannelName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 667
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #channel:I
    .end local v3           #color:I
    .end local v4           #freq:I
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updatePressedButton()V

    .line 668
    return-void
.end method

.method public zteFmFavoriteStationsFlingNext()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 591
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmCalcPageNum()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getFavChannelsNum()I

    move-result v1

    if-nez v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmCalcNextDisplayPageIndex(I)V

    .line 594
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmGetViewFlipperDisplayedChild()I

    move-result v0

    .line 595
    .local v0, viewFChildIndex:I
    if-ne v0, v2, :cond_3

    .line 597
    const/4 v0, 0x0

    .line 603
    :cond_2
    :goto_1
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetDisplayFavoSationsPage(II)V

    .line 605
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 606
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 607
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 599
    :cond_3
    if-nez v0, :cond_2

    .line 601
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public zteFmFavoriteStationsFlingPrevious()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 570
    const-string v1, "FmReceiveView"

    const-string v2, "zteFmFavoriteStationsFlingPrevious   =="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmCalcPageNum()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getFavChannelsNum()I

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmCalcNextDisplayPageIndex(I)V

    .line 574
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmGetViewFlipperDisplayedChild()I

    move-result v0

    .line 575
    .local v0, viewFChildIndex:I
    if-ne v0, v3, :cond_3

    .line 577
    const/4 v0, 0x0

    .line 583
    :cond_2
    :goto_1
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mCurrPageIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetDisplayFavoSationsPage(II)V

    .line 585
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 586
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 579
    :cond_3
    if-nez v0, :cond_2

    .line 581
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public zteFmGetViewFlipperDisplayedChild()I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    return v0
.end method

.method public zteFmSetCurrentPageImageNumber(I)V
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_1:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_2:Landroid/widget/ImageView;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_3:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    if-nez p1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_1:Landroid/widget/ImageView;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_2:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->page_number_3:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public zteFmSetDisplayFavoSationsPage(II)V
    .locals 10
    .parameter "pageIndex"
    .parameter "viewFChildIndex"

    .prologue
    .line 458
    const-string v7, "FmReceiveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zteFmSetDisplayFavoSationsPage(): pageIndex=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v7, "FmReceiveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zteFmSetDisplayFavoSationsPage(): viewFChildIndex=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v6, 0x0

    .line 461
    .local v6, stationIdex:I
    const/4 v2, 0x0

    .line 462
    .local v2, cnt:I
    mul-int/lit8 v6, p1, 0x9

    .line 463
    :goto_0
    const/16 v7, 0x9

    if-ge v2, v7, :cond_1

    .line 465
    const-string v7, "FmReceiveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zteFmSetDisplayFavoSationsPage(): stationIdex=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    mul-int/lit8 v7, p2, 0x9

    add-int v5, v7, v2

    .line 467
    .local v5, mChannelBtnIndex:I
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v7}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v1

    .line 468
    .local v1, channels:[I
    const-string v3, ""

    .line 469
    .local v3, display:Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 470
    .local v0, b:Landroid/widget/Button;
    aget v4, v1, v5

    .line 471
    .local v4, freq:I
    if-nez v4, :cond_0

    .line 478
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #channels:[I
    .end local v3           #display:Ljava/lang/String;
    .end local v4           #freq:I
    .end local v5           #mChannelBtnIndex:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->zteFmSetCurrentPageImageNumber(I)V

    .line 481
    return-void
.end method
