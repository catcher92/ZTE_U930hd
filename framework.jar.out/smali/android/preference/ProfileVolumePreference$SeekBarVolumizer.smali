.class public Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsRingerSeekBar:Z

.field private mLastProgress:I

.field public mLastVolume:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field public mSystemCurrentVolume:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/ProfileVolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "originalVolume"

    .prologue
    const/4 v1, -0x1

    .line 264
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 239
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 242
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 246
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 248
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 265
    iput-object p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 266
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 267
    iput p4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 268
    iput-object p3, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 269
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 271
    invoke-direct {p0, p3, p5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;III)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "originalVolume"
    .parameter "defaultUriType"

    .prologue
    const/4 v1, -0x1

    .line 302
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 239
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 242
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 246
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 248
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 303
    iput-object p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 304
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 305
    iput p4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 306
    iput-object p3, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 308
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 310
    invoke-direct {p0, p3, p5, p6}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;II)V

    .line 311
    return-void
.end method

.method static synthetic access$000(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;I)V
    .locals 5
    .parameter "seekBar"
    .parameter "originalVolume"

    .prologue
    const/4 v3, 0x2

    .line 275
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 277
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 278
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    iput p2, v1, Landroid/preference/ProfileVolumePreference;->mLastRingerVolume:I

    .line 279
    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 280
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 282
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 286
    const/4 v0, 0x0

    .line 294
    .local v0, defaultUri:Landroid/net/Uri;
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 296
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 297
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 300
    :cond_0
    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;II)V
    .locals 4
    .parameter "seekBar"
    .parameter "originalVolume"
    .parameter "defaultUriType"

    .prologue
    const/4 v3, 0x3

    .line 314
    if-ne v3, p3, :cond_1

    .line 315
    const-string v1, "ProfileVolumePreference"

    const-string v2, "Profile initSeekBar() STREAM_MUSIC == defaultUriType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 322
    :goto_0
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 323
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 325
    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 326
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 332
    const/4 v0, 0x0

    .line 340
    .local v0, defaultUri:Landroid/net/Uri;
    const/4 v1, 0x5

    if-ne p3, v1, :cond_2

    .line 341
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 345
    :goto_1
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 346
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 349
    :cond_0
    return-void

    .line 318
    .end local v0           #defaultUri:Landroid/net/Uri;
    :cond_1
    const-string v1, "ProfileVolumePreference"

    const-string v2, "Profile initSeekBar() STREAM_MUSIC == defaultUriType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    .line 343
    .restart local v0       #defaultUri:Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private sample()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 404
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 405
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 419
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 423
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 369
    if-nez p3, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 433
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 434
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 435
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 436
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 438
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 426
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 427
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    .line 428
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    .line 430
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 384
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 390
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 378
    iput p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 379
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 365
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 394
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 395
    iget-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v1, v0, Landroid/preference/ProfileVolumePreference;->mLastRingerVolume:I

    .line 399
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 400
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 354
    iget-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 356
    const-string v0, "ProfileVolumePreference"

    const-string v1, "Profile stop() mIsRingerSeekBar == true unregisterContentObserver(mVolumeObserver)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 360
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 411
    :cond_0
    return-void
.end method
