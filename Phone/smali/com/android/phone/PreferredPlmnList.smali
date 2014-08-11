.class public Lcom/android/phone/PreferredPlmnList;
.super Landroid/preference/PreferenceActivity;
.source "PreferredPlmnList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;
    }
.end annotation


# instance fields
.field dialogshow:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mListCount:I

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceList:Landroid/preference/PreferenceCategory;

.field private mPreferredPlmnInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/phone/PreferredPlmnList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredPlmnList$1;-><init>(Lcom/android/phone/PreferredPlmnList;)V

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredPlmnList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PreferredPlmnList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnList;->displayQueryFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PreferredPlmnList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PreferredPlmnList;Landroid/os/AsyncResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PreferredPlmnList;->doListLoaded(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PreferredPlmnList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/PreferredPlmnList;->loadPreferredPlmnList()V

    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 406
    .local v1, p:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList;->mPreferenceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 409
    .end local v1           #p:Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 411
    :cond_1
    return-void
.end method

.method private displayEmptyList(Z)V
    .locals 2
    .parameter "isEmpty"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/phone/PreferredPlmnList;->mPreferenceList:Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    const v0, 0x7f0c02f6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 290
    return-void

    .line 289
    :cond_0
    const v0, 0x7f0c02e1

    goto :goto_0
.end method

.method private displayQueryFailed()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 282
    .local v0, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method private doListLoaded(Landroid/os/AsyncResult;Z)V
    .locals 17
    .parameter "ar"
    .parameter "isLongFormat"

    .prologue
    .line 293
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V

    .line 296
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/PreferredPlmnInfo;

    move-object v13, v1

    check-cast v13, [Lcom/android/internal/telephony/PreferredPlmnInfo;

    .line 298
    .local v13, listInfo:[Lcom/android/internal/telephony/PreferredPlmnInfo;
    array-length v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/PreferredPlmnList;->mListCount:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PreferredPlmnList;->clearList()V

    .line 304
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v14, plmnCHList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "CHINA  MOBILE"

    const v2, 0x7f0c02c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PreferredPlmnList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "CHN-UNICOM"

    const v2, 0x7f0c02ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PreferredPlmnList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/PreferredPlmnList;->mListCount:I

    if-ge v11, v1, :cond_3

    .line 312
    new-instance v9, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 315
    .local v9, carrier:Landroid/preference/PreferenceScreen;
    const-string v1, "PreferredPlmnList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InLongFormat:Index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "format["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oper["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsmAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsmCompactAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmCompactAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utranAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getUtranAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v1

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHN 02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    const-string v16, "CHINA MOBILE"

    .line 346
    .local v16, titleStr:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 348
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPreferenceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    new-instance v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;-><init>(Lcom/android/phone/PreferredPlmnList;)V

    .line 352
    .local v10, displayItem:Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getIndex()I

    move-result v1

    iput v1, v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->index:I

    .line 364
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->oper:Ljava/lang/String;

    .line 366
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmAct()I

    move-result v1

    iput v1, v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmAct:I

    .line 367
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmCompactAct()I

    move-result v1

    iput v1, v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmCompactAct:I

    .line 368
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getUtranAct()I

    move-result v1

    iput v1, v10, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->utranAct:I

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 334
    .end local v10           #displayItem:Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;
    .end local v16           #titleStr:Ljava/lang/String;
    :cond_1
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 335
    .local v15, titleCH:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 336
    move-object/from16 v16, v15

    .restart local v16       #titleStr:Ljava/lang/String;
    goto :goto_1

    .line 343
    .end local v16           #titleStr:Ljava/lang/String;
    :cond_2
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #titleStr:Ljava/lang/String;
    goto :goto_1

    .line 373
    .end local v9           #carrier:Landroid/preference/PreferenceScreen;
    .end local v15           #titleCH:Ljava/lang/String;
    .end local v16           #titleStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 374
    .local v8, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    .line 402
    .end local v8           #msg:Landroid/os/Message;
    .end local v11           #i:I
    .end local v13           #listInfo:[Lcom/android/internal/telephony/PreferredPlmnInfo;
    .end local v14           #plmnCHList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_2
    return-void

    .line 376
    :cond_5
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 377
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/PreferredPlmnInfo;

    move-object v13, v1

    check-cast v13, [Lcom/android/internal/telephony/PreferredPlmnInfo;

    .line 378
    .restart local v13       #listInfo:[Lcom/android/internal/telephony/PreferredPlmnInfo;
    array-length v12, v13

    .line 379
    .local v12, length:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    if-ge v11, v12, :cond_4

    .line 381
    const-string v1, "PreferredPlmnList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InNumFormat:Index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "format["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oper["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsmAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsmCompactAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getGsmCompactAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utranAct["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v13, v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getUtranAct()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 391
    .local v10, displayItem:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPreferenceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 392
    .restart local v9       #carrier:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;

    aget-object v2, v13, v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->id:Ljava/lang/String;

    .line 394
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 395
    aget-object v1, v13, v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/PreferredPlmnInfo;->getOper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 400
    .end local v9           #carrier:Landroid/preference/PreferenceScreen;
    .end local v10           #displayItem:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #length:I
    .end local v13           #listInfo:[Lcom/android/internal/telephony/PreferredPlmnInfo;
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V

    goto/16 :goto_2
.end method

.method private loadPreferredPlmnList()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 259
    const-string v0, "PreferredPlmnList"

    const-string v2, "begin to load list"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v0, 0xc8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredPlmnList;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 268
    .local v7, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, ""

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;->setPreferredPLMNList(IILjava/lang/String;IIILandroid/os/Message;)V

    .line 270
    invoke-direct {p0, v1}, Lcom/android/phone/PreferredPlmnList;->displayEmptyList(Z)V

    .line 271
    return-void

    .line 262
    .end local v7           #msg:Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 263
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnList;->finish()V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredPlmnList;->addPreferencesFromResource(I)V

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_preference_preferred_plmn_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mPreferenceList:Landroid/preference/PreferenceCategory;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PreferredPlmnList;->mListCount:I

    .line 221
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    .line 222
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 235
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 236
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 243
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 248
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 415
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 417
    const v0, 0x7f0c02f1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 419
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 439
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 426
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.PreferredPlmnListEdit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    iget v2, p0, Lcom/android/phone/PreferredPlmnList;->mListCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string v1, "oper"

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 429
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "gsmact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v1, "gsmcompactact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v1, "utranact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v1, "add"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredPlmnList;->startActivity(Landroid/content/Intent;)V

    .line 436
    const/4 v1, 0x1

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, retVal:Z
    iget-object v3, p0, Lcom/android/phone/PreferredPlmnList;->mPreferredPlmnInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;

    .line 185
    .local v2, selectedInfo:Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;
    if-eqz v2, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.PreferredPlmnListEdit"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "PreferredPlmnList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To edit: index["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "oper["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gsmAct["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmAct:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gsmCompactAct["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utranAct["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->utranAct:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v3, "index"

    iget v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->index:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v3, "oper"

    iget-object v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v3, "id"

    iget-object v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v3, "gsmact"

    iget v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmAct:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v3, "gsmcompactact"

    iget v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v3, "utranact"

    iget v4, v2, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->utranAct:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredPlmnList;->startActivity(Landroid/content/Intent;)V

    .line 203
    const/4 v1, 0x1

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 205
    :cond_0
    const-string v3, "PreferredPlmnList"

    const-string v4, "unknown selected item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 252
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 253
    iput-object p2, p0, Lcom/android/phone/PreferredPlmnList;->dialogshow:Landroid/app/Dialog;

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/PreferredPlmnList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/PreferredPlmnList$2;

    invoke-direct {v1, p0}, Lcom/android/phone/PreferredPlmnList$2;-><init>(Lcom/android/phone/PreferredPlmnList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method
