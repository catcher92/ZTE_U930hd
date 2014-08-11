.class public Lcom/android/phone/SimContactsService;
.super Landroid/app/Service;
.source "SimContactsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContactsService$LocalBinder;,
        Lcom/android/phone/SimContactsService$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContactsService$CardRecord;,
        Lcom/android/phone/SimContactsService$QueryHandler;,
        Lcom/android/phone/SimContactsService$NamePhoneTypePair;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static mSimLoaded:Z

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mBinder:Landroid/os/IBinder;

.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field private mIccCardRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SimContactsService$CardRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryHandler:Lcom/android/phone/SimContactsService$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContactsService;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 112
    sput-boolean v2, Lcom/android/phone/SimContactsService;->mSimLoaded:Z

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "anrs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrs1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "anrs2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "anrs3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SimContactsService;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SimContactsService;->mCardType:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimContactsService;->mCursor:Landroid/database/Cursor;

    .line 976
    new-instance v0, Lcom/android/phone/SimContactsService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/SimContactsService$LocalBinder;-><init>(Lcom/android/phone/SimContactsService;)V

    iput-object v0, p0, Lcom/android/phone/SimContactsService;->mBinder:Landroid/os/IBinder;

    .line 981
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContactsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/SimContactsService;->reQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SimContactsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/SimContactsService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/SimContactsService;->insertCardContacts(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/SimContactsService;->handleAllCardContacts(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContactsService;->sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SimContactsService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SimContactsService;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimContactsService;Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SimContactsService;->addOneCardContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/SimContactsService;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/SimContactsService;->getLastSIM_ICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SimContactsService;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/SimContactsService;->readICCIDFromPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SimContactsService;->isSIMChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/SimContactsService;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContactsService;->setSIM_ICCID(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addOneCardContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 11
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 716
    new-instance v9, Lcom/android/phone/SimContactsService$NamePhoneTypePair;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/phone/SimContactsService$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 717
    .local v9, namePhoneTypePair:Lcom/android/phone/SimContactsService$NamePhoneTypePair;
    iget-object v2, v9, Lcom/android/phone/SimContactsService$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 718
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 719
    .local v10, phoneType:I
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, emailAddresses:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, anrNum1:Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, anrNum2:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 728
    .local v7, anrNum3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, emailAddressArray:[Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/phone/SimContactsService$CardRecord;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/SimContactsService$CardRecord;-><init>(Lcom/android/phone/SimContactsService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .local v0, icc:Lcom/android/phone/SimContactsService$CardRecord;
    iget-object v1, p0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    return-void

    .line 731
    .end local v0           #icc:Lcom/android/phone/SimContactsService$CardRecord;
    .end local v4           #emailAddressArray:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #emailAddressArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/android/phone/SimContactsService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimContactsService;->mContext:Landroid/content/Context;

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getLastSIM_ICCID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1022
    const-string v2, "iccid"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1024
    .local v1, shareprferences:Landroid/content/SharedPreferences;
    const-string v2, "serialnumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, iccid:Ljava/lang/String;
    return-object v0
.end method

.method private handleAllCardContacts(Landroid/content/ContentResolver;)V
    .locals 19
    .parameter "resolver"

    .prologue
    .line 605
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/SimContactsService;->queryAllCardContacts(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v10

    .line 606
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 607
    const-string v3, "cursor is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const-wide/16 v14, -0x1

    .line 612
    .local v14, oldContactId:J
    const-wide/16 v12, -0x1

    .line 613
    .local v12, newContactId:J
    :try_start_0
    const-string v11, ""

    .line 614
    .local v11, mimeType:Ljava/lang/String;
    const-string v16, ""

    .line 615
    .local v16, phoneType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 616
    .local v4, recordName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 617
    .local v5, recordNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 620
    .local v6, recordEmail:Ljava/lang/String;
    const/4 v7, 0x0

    .line 621
    .local v7, recordAnrNum1:Ljava/lang/String;
    const/4 v8, 0x0

    .line 622
    .local v8, recordAnrNum2:Ljava/lang/String;
    const/4 v9, 0x0

    .line 625
    .local v9, recordAnrNum3:Ljava/lang/String;
    const/4 v3, -0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 626
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 627
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 628
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 629
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 631
    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-gez v3, :cond_3

    .line 632
    move-wide v14, v12

    .line 634
    :cond_3
    cmp-long v3, v12, v14

    if-eqz v3, :cond_5

    move-object/from16 v3, p0

    .line 641
    invoke-direct/range {v3 .. v9}, Lcom/android/phone/SimContactsService;->isInRecordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "delete from database oldContactId = "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 646
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    :cond_4
    move-wide v14, v12

    .line 651
    const/4 v4, 0x0

    .line 652
    const/4 v5, 0x0

    .line 653
    const/4 v6, 0x0

    .line 656
    const/4 v7, 0x0

    .line 657
    const/4 v8, 0x0

    .line 658
    const/4 v9, 0x0

    .line 661
    :cond_5
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 662
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 664
    :cond_6
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 665
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 667
    :cond_7
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 670
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 672
    :cond_8
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 674
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 677
    :cond_9
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 679
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 681
    :cond_a
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 683
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 698
    :cond_b
    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-ltz v3, :cond_c

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/phone/SimContactsService;->isInRecordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "delete from database oldContactId = "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 702
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 708
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/SimContactsService;->insertCardContacts(Landroid/content/ContentResolver;)I

    goto/16 :goto_0

    .line 705
    .end local v4           #recordName:Ljava/lang/String;
    .end local v5           #recordNumber:Ljava/lang/String;
    .end local v6           #recordEmail:Ljava/lang/String;
    .end local v7           #recordAnrNum1:Ljava/lang/String;
    .end local v8           #recordAnrNum2:Ljava/lang/String;
    .end local v9           #recordAnrNum3:Ljava/lang/String;
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v16           #phoneType:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private insertCardContacts(Landroid/content/ContentResolver;)I
    .locals 27
    .parameter "resolver"

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 450
    .local v21, recordNum:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v17, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 453
    .local v14, index:I
    const/16 v19, 0x0

    .line 455
    .local v19, rawId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/phone/SimContactsService$CardRecord;

    .line 457
    .local v20, record:Lcom/android/phone/SimContactsService$CardRecord;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/SimContactsService$CardRecord;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 458
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/SimContactsService$CardRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 459
    .local v18, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/phone/SimContactsService$CardRecord;->emails:[Ljava/lang/String;

    .line 460
    .local v11, emailAddressArray:[Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/phone/SimContactsService$CardRecord;->anrs:[Ljava/lang/String;

    .line 462
    .local v3, anrArray:[Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum1:Ljava/lang/String;

    .line 463
    .local v4, anrNum1:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum2:Ljava/lang/String;

    .line 464
    .local v5, anrNum2:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/phone/SimContactsService$CardRecord;->anrNum3:Ljava/lang/String;

    .line 466
    .local v6, anrNum3:Ljava/lang/String;
    move/from16 v19, v14

    .line 468
    sget-object v22, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 471
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v22, "sim_phone_storage_type"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    #invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 472
    sget-object v22, Lcom/android/phone/SimContactsService;->sEmptyContentValues:Landroid/content/ContentValues;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 473
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    add-int/lit8 v14, v14, 0x1

    .line 477
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 478
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 479
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 480
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 481
    const-string v22, "data2"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 482
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v14, v14, 0x1

    .line 487
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 488
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 489
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 491
    const-string v22, "data2"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 492
    const-string v22, "data1"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 494
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v14, v14, 0x1

    .line 499
    :cond_2
    if-eqz v11, :cond_3

    .line 500
    move-object v7, v11

    .local v7, arr$:[Ljava/lang/String;
    array-length v15, v7

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_3

    aget-object v10, v7, v13

    .line 501
    .local v10, emailAddress:Ljava/lang/String;
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 502
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 503
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 504
    const-string v22, "data2"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 507
    const-string v22, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 509
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v14, v14, 0x1

    .line 500
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 538
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #emailAddress:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 539
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 540
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 541
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 542
    const-string v22, "data2"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 543
    const-string v22, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 544
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v14, v14, 0x1

    .line 548
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 549
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 550
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 551
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 552
    const-string v22, "data2"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 553
    const-string v22, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 554
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v14, v14, 0x1

    .line 558
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 559
    sget-object v22, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 560
    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 562
    const-string v22, "data2"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 563
    const-string v22, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 564
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v14, v14, 0x1

    .line 569
    :cond_6
    const/16 v22, 0x5

    move/from16 v0, v22

    if-lt v14, v0, :cond_0

    .line 570
    const/4 v14, 0x0

    .line 573
    :try_start_0
    const-string v22, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 584
    const-wide/16 v22, 0x1f4

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 575
    :catch_0
    move-exception v9

    .line 576
    .local v9, e:Landroid/os/RemoteException;
    const-string v22, "SimContactsService"

    const-string v23, "%s: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 578
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 579
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v22, "SimContactsService"

    const-string v23, "%s: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 589
    .end local v3           #anrArray:[Ljava/lang/String;
    .end local v4           #anrNum1:Ljava/lang/String;
    .end local v5           #anrNum2:Ljava/lang/String;
    .end local v6           #anrNum3:Ljava/lang/String;
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #e:Landroid/content/OperationApplicationException;
    .end local v11           #emailAddressArray:[Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #phoneNumber:Ljava/lang/String;
    .end local v20           #record:Lcom/android/phone/SimContactsService$CardRecord;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_8

    .line 591
    :try_start_1
    const-string v22, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 600
    :cond_8
    :goto_3
    return v21

    .line 592
    :catch_2
    move-exception v9

    .line 593
    .local v9, e:Landroid/os/RemoteException;
    const-string v22, "SimContactsService"

    const-string v23, "%s: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 595
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v9

    .line 596
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v22, "SimContactsService"

    const-string v23, "%s: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isInRecordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "name"
    .parameter "number"
    .parameter "emailAddresses"
    .parameter "anrNum1"
    .parameter "anrNum2"
    .parameter "anrNum3"

    .prologue
    .line 419
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, emailAddressArray:[Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/phone/SimContactsService$CardRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/SimContactsService$CardRecord;-><init>(Lcom/android/phone/SimContactsService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v0, icc:Lcom/android/phone/SimContactsService$CardRecord;
    iget-object v1, p0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/SimContactsService$CardRecord;

    .line 429
    .local v9, rec:Lcom/android/phone/SimContactsService$CardRecord;
    invoke-virtual {v9, v0}, Lcom/android/phone/SimContactsService$CardRecord;->isEqual(Lcom/android/phone/SimContactsService$CardRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "isInRecordList = true"

    invoke-virtual {p0, v1}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/android/phone/SimContactsService;->mIccCardRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 432
    const/4 v1, 0x1

    .line 435
    .end local v9           #rec:Lcom/android/phone/SimContactsService$CardRecord;
    :goto_1
    return v1

    .line 422
    .end local v0           #icc:Lcom/android/phone/SimContactsService$CardRecord;
    .end local v4           #emailAddressArray:[Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #emailAddressArray:[Ljava/lang/String;
    goto :goto_0

    .line 435
    .restart local v0       #icc:Lcom/android/phone/SimContactsService$CardRecord;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSIMChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "last_iccid"
    .parameter "current_iccid"

    .prologue
    .line 1053
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1054
    :cond_0
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return v1

    .line 1056
    :cond_1
    const-string v0, ""

    .line 1057
    .local v0, empty_string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1058
    .local v1, ischanged:Z
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1059
    :cond_2
    const/4 v1, 0x1

    .line 1060
    const-string v2, "sim contact import sim changed, due to empty_string"

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 1062
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    if-eq p2, v2, :cond_4

    .line 1063
    const/4 v1, 0x0

    .line 1064
    const-string v2, "sim contact import sim does not change!"

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 1069
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim contact ischanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_4
    const/4 v1, 0x1

    .line 1067
    const-string v2, "sim contact import sim changed!"

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/SimContactsService;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 172
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "query: starting an async query"

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mQueryHandler:Lcom/android/phone/SimContactsService$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/SimContactsService;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/SimContactsService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private queryAllCardContacts(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"

    .prologue
    .line 367
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "sim_phone_storage_type"

    #aput-object v1, v2, v0

    .line 374
    .local v2, simProjection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #const-string v3, "sim_phone_storage_type=1"
    
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private reQuery()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/phone/SimContactsService;->query()V

    .line 179
    return-void
.end method

.method private readICCIDFromPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1035
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1036
    .local v0, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, serialnumber:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1038
    const-string v1, ""

    .line 1040
    :cond_0
    return-object v1
.end method

.method private sendBroadcastForSIMImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "action"

    .prologue
    .line 1082
    if-nez p2, :cond_0

    .line 1083
    const-string v0, "method:sendBroadcastForSIMImport error:action = null"

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to notify contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContactsService;->log(Ljava/lang/String;)V

    .line 1087
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSIM_ICCID(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "iccid"

    .prologue
    .line 1008
    const-string v2, "iccid"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1010
    .local v1, shareprferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1011
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serialnumber"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1012
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 996
    const-string v0, "SimContactsService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/phone/SimContactsService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 955
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 959
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 960
    new-instance v0, Lcom/android/phone/SimContactsService$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/SimContactsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SimContactsService$QueryHandler;-><init>(Lcom/android/phone/SimContactsService;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/SimContactsService;->mQueryHandler:Lcom/android/phone/SimContactsService$QueryHandler;

    .line 961
    sget-boolean v0, Lcom/android/phone/SimContactsService;->mSimLoaded:Z

    if-nez v0, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/android/phone/SimContactsService;->query()V

    .line 968
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 988
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
