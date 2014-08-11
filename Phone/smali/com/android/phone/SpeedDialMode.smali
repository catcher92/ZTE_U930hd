.class public Lcom/android/phone/SpeedDialMode;
.super Ljava/lang/Object;
.source "SpeedDialMode.java"


# static fields
.field public static final FAST_DIAL_KEY:[Ljava/lang/String;

.field public static final FAST_DIAL_NAME_KEY:[Ljava/lang/String;

.field public static final FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;


# instance fields
.field private final PHONENAMECOLUMNS:[Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field mFastDialInfo:Landroid/content/SharedPreferences;

.field private mFastDialKey:[I

.field private mFastDialName:[Ljava/lang/String;

.field private mFastDialNumber:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FAST_DIAL_KEY_1"

    aput-object v1, v0, v3

    const-string v1, "FAST_DIAL_KEY_2"

    aput-object v1, v0, v4

    const-string v1, "FAST_DIAL_KEY_3"

    aput-object v1, v0, v5

    const-string v1, "FAST_DIAL_KEY_4"

    aput-object v1, v0, v6

    const-string v1, "FAST_DIAL_KEY_5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FAST_DIAL_KEY_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FAST_DIAL_KEY_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FAST_DIAL_KEY_8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_KEY:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FAST_DIAL_NUM_KEY_1"

    aput-object v1, v0, v3

    const-string v1, "FAST_DIAL_NUM_KEY_2"

    aput-object v1, v0, v4

    const-string v1, "FAST_DIAL_NUM_KEY_3"

    aput-object v1, v0, v5

    const-string v1, "FAST_DIAL_NUM_KEY_4"

    aput-object v1, v0, v6

    const-string v1, "FAST_DIAL_NUM_KEY_5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FAST_DIAL_NUM_KEY_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FAST_DIAL_NUM_KEY_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FAST_DIAL_NUM_KEY_8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FAST_DIAL_NAME_KEY_1"

    aput-object v1, v0, v3

    const-string v1, "FAST_DIAL_NAME_KEY_2"

    aput-object v1, v0, v4

    const-string v1, "FAST_DIAL_NAME_KEY_3"

    aput-object v1, v0, v5

    const-string v1, "FAST_DIAL_NAME_KEY_4"

    aput-object v1, v0, v6

    const-string v1, "FAST_DIAL_NAME_KEY_5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FAST_DIAL_NAME_KEY_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FAST_DIAL_NAME_KEY_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FAST_DIAL_NAME_KEY_8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NAME_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/16 v1, 0x8

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    .line 44
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SpeedDialMode;->mFastDialName:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/SpeedDialMode;->PHONENAMECOLUMNS:[Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 357
    const-string v0, "FastDailMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$[db] lookupContactFromUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v6, ""

    .line 359
    .local v6, phoneNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->PHONENAMECOLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 361
    .local v7, phonesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 363
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 367
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 372
    :goto_0
    const-string v0, "FastDailMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$[db] phoneNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v6

    .line 367
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 370
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 342
    const-string v2, "FastDailMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$[db] queryContactInfoForPhoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v0, ""

    .line 345
    .local v0, contactNumber:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 352
    :goto_0
    return-object v2

    .line 349
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/phone/SpeedDialMode;->lookupContactFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 352
    goto :goto_0
.end method


# virtual methods
.method public fastDialDeleteOneInfo(I)Z
    .locals 7
    .parameter "mFastKey"

    .prologue
    const/4 v3, 0x0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, isExist:Z
    const-string v4, "FastDailMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$$$$ deleteFastDialInfo [mFastKey] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x7

    if-gt v1, v4, :cond_0

    .line 211
    const/4 v4, 0x2

    if-lt p1, v4, :cond_3

    const/16 v4, 0x9

    if-gt p1, v4, :cond_3

    .line 212
    const/4 v2, 0x1

    .line 216
    :cond_0
    const-string v4, "FastDailMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$$$$ isExist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v2, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    add-int/lit8 v5, p1, -0x2

    aput v3, v4, v5

    .line 221
    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x2

    const-string v6, ""

    aput-object v6, v4, v5

    .line 223
    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const-string v5, "fast_dail_shared_pref_key"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    .line 224
    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_KEY:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x2

    aget-object v4, v4, v5

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    sget-object v4, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x2

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 210
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getContactPhoneName()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    const-string v1, "FastDailMode"

    const-string v2, "$$$$ getContactPhoneName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 175
    const-string v1, ""

    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/phone/SpeedDialMode;->lookupNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 177
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ read db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialName:[Ljava/lang/String;

    return-object v1
.end method

.method public getDialPhoneNumber(I)Ljava/lang/String;
    .locals 8
    .parameter "mFastKey"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, isExist:Z
    const-string v3, "FastDailMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$$$ getDialPhoneNumber [mFastKey] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v7, :cond_0

    .line 239
    const/4 v3, 0x2

    if-lt p1, v3, :cond_2

    const/16 v3, 0x9

    if-gt p1, v3, :cond_2

    .line 240
    const/4 v1, 0x1

    .line 244
    :cond_0
    const-string v3, "FastDailMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$$$ isExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz v1, :cond_1

    .line 247
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v7, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const-string v4, "fast_dail_shared_pref_key"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    .line 249
    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_KEY:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    .line 250
    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 251
    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_3

    .line 252
    const-string v2, "FastDailMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ mFastDialNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 258
    :cond_1
    return-object v2

    .line 238
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getEditViewMaxLen()I
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contact_number_max_length"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 378
    .local v0, maxNumberLength:I
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$getEditViewMaxLen, maxNumberLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v0
.end method

.method public getFastDialKeys()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    const-string v1, "FastDailMode"

    const-string v2, "$$$$ getFastDialKey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const-string v2, "fast_dail_shared_pref_key"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    .line 149
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_KEY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 150
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ mFastDialKey["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialKey:[I

    return-object v1
.end method

.method public getFastDialNumbers()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    const-string v1, "FastDailMode"

    const-string v2, "$$$$ getFastDialNumbers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const-string v2, "fast_dail_shared_pref_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    .line 163
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 164
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$ mFastDialNumber["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mFastDialNumber:[Ljava/lang/String;

    return-object v1
.end method

.method public lookupNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 324
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$[db] lookupNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, ""

    .line 327
    .local v0, pName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/phone/SpeedDialMode;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const v2, 0x7f0c02af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "FastDailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$[db] pName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    return-object v0
.end method

.method public setFastDialInfo(ILjava/lang/String;)Z
    .locals 5
    .parameter "mFastKey"
    .parameter "mPhoneNumber"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, i:I
    const-string v2, "FastDailMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ setFastDialInfo - mFastKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   , mPhoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/16 v2, 0x9

    if-gt p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mCtx:Landroid/content/Context;

    const-string v3, "fast_dail_shared_pref_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    .line 132
    iget-object v2, p0, Lcom/android/phone/SpeedDialMode;->mFastDialInfo:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_KEY:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v2, Lcom/android/phone/SpeedDialMode;->FAST_DIAL_NUMBER_KEY:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v2, "FastDailMode"

    const-string v3, "$$$$ -------setFastDialInfo over --------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x1

    return v2
.end method

.method public setFastDialPhoneName(ILjava/lang/String;)V
    .locals 3
    .parameter "mFastKey"
    .parameter "mPhoneNumber"

    .prologue
    .line 187
    const-string v0, "FastDailMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ setFastDialPhoneName ... mPhoneName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/phone/SpeedDialMode;->mFastDialName:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x2

    aput-object p2, v0, v1

    .line 192
    :cond_0
    return-void
.end method
