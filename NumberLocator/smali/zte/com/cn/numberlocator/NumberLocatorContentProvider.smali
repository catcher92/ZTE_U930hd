.class public Lzte/com/cn/numberlocator/NumberLocatorContentProvider;
.super Landroid/content/ContentProvider;
.source "NumberLocatorContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$1;,
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;,
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;,
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;
    }
.end annotation


# static fields
.field public static ipDialEnabled:Z

.field public static ipDialNumber:Ljava/lang/String;

.field public static localNumber:Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field settingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    .line 42
    const-string v0, ""

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 90
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "location"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "location/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;-><init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;Lzte/com/cn/numberlocator/NumberLocatorContentProvider$1;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;

    invoke-direct {v0, p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$SettingsChangeObserver;-><init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->settingsContentObserver:Landroid/database/ContentObserver;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V

    return-void
.end method

.method private copyDatabaseToDataPath()V
    .locals 14

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 117
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v10, "/system/etc/customize/location.db"

    .line 118
    .local v10, srcdbFilename:Ljava/lang/String;
    const-string v3, "/data/data/zte.com.cn.numberlocator/databases/location.db"

    .line 121
    .local v3, destdbFilename:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v9, srcFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, desFile:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const/16 v11, 0x1000

    :try_start_2
    new-array v0, v11, [B

    .line 128
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 137
    .end local v2           #desFile:Ljava/io/File;
    .end local v3           #destdbFilename:Ljava/lang/String;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v9           #srcFile:Ljava/io/File;
    .end local v10           #srcdbFilename:Ljava/lang/String;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const-string v11, "NumberLocatorContentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyDatabaseToDataPath ex:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 131
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v2       #desFile:Ljava/io/File;
    .restart local v3       #destdbFilename:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #srcFile:Ljava/io/File;
    .restart local v10       #srcdbFilename:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 132
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 133
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 139
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 135
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    .end local v2           #desFile:Ljava/io/File;
    .end local v3           #destdbFilename:Ljava/lang/String;
    .end local v9           #srcFile:Ljava/io/File;
    .end local v10           #srcdbFilename:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v2       #desFile:Ljava/io/File;
    .restart local v3       #destdbFilename:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v9       #srcFile:Ljava/io/File;
    .restart local v10       #srcdbFilename:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getIpSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_ip_dial"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    .line 75
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ip_number"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "local_number"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    .line 79
    const-string v0, "NumberLocatorContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpSettings ipDialEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ipDialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",localNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private handleNumber(Lzte/com/cn/numberlocator/NumberType;)Landroid/database/Cursor;
    .locals 14
    .parameter "numberType"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 206
    const/4 v11, 0x0

    .line 207
    .local v11, ret:Landroid/database/Cursor;
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-object v11

    .line 212
    :pswitch_0
    const-string v1, "location,city_zone"

    .line 213
    .local v1, tables:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "location.uuid as phonenum"

    aput-object v0, v2, v13

    const-string v0, "city_zone.city as cityname"

    aput-object v0, v2, v5

    const-string v0, "city_zone.zone as areacode"

    aput-object v0, v2, v3

    .line 214
    .local v2, columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v12, sbselection:Ljava/lang/StringBuffer;
    const-string v0, "location.uuid=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v0, "\' and location.city=city_zone.uuid"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 221
    goto :goto_0

    .line 225
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v12           #sbselection:Ljava/lang/StringBuffer;
    :pswitch_1
    const-string v1, "city_zone"

    .line 226
    .restart local v1       #tables:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "city as cityname"

    aput-object v0, v2, v13

    const-string v0, "\'fixedphone\' as cardtype"

    aput-object v0, v2, v5

    const-string v0, "zone as areacode"

    aput-object v0, v2, v3

    .line 227
    .restart local v2       #columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .restart local v12       #sbselection:Ljava/lang/StringBuffer;
    const-string v0, "zone=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v0, "\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v8, "1"

    .line 233
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 234
    goto :goto_0

    .line 238
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #limit:Ljava/lang/String;
    .end local v12           #sbselection:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v1, "international"

    .line 239
    .restart local v1       #tables:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "zone as cityname"

    aput-object v0, v2, v13

    const-string v0, "\'intlphone\' as cardtype"

    aput-object v0, v2, v5

    const-string v0, "uuid as areacode"

    aput-object v0, v2, v3

    .line 240
    .restart local v2       #columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .restart local v12       #sbselection:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, number:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v9, v0, :cond_0

    .line 247
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 248
    const-string v0, "uuid=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v0, "\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string v8, "1"

    .line 253
    .restart local v8       #limit:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 254
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 245
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 266
    sget-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 267
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir//vnd.google.location"

    .line 271
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item//vnd.google.location"

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 145
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->settingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v10, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    const-string v0, "NumberLocatorContentProvider"

    const-string v3, "onCreate ->getIpSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V

    .line 154
    new-instance v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 155
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    const-string v1, "location,city_zone"

    .line 159
    .local v1, tables:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "location.uuid as phonenum"

    aput-object v3, v2, v0

    const-string v0, "city_zone.city as cityname"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v3, "\'fixedphone\' as cardtype"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "city_zone.zone as areacode"

    aput-object v3, v2, v0

    .line 160
    .local v2, columns:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v9, sbselection:Ljava/lang/StringBuffer;
    const-string v0, "location.uuid=\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v0, "1300000"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v0, "\' and location.city=city_zone.uuid"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return v10

    .line 168
    :catch_0
    move-exception v8

    .line 170
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "NumberLocatorContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db.query ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 172
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->copyDatabaseToDataPath()V

    .line 173
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 181
    const/4 v2, 0x0

    .line 184
    .local v2, ret:Landroid/database/Cursor;
    sget-object v3, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 185
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lzte/com/cn/numberlocator/NumberLocator;->checkInputNum(Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/numberlocator/NumberType;

    move-result-object v1

    .line 190
    .local v1, numbertype:Lzte/com/cn/numberlocator/NumberType;
    invoke-direct {p0, v1}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->handleNumber(Lzte/com/cn/numberlocator/NumberType;)Landroid/database/Cursor;

    move-result-object v2

    .line 196
    .end local v1           #numbertype:Lzte/com/cn/numberlocator/NumberType;
    :pswitch_1
    if-nez v2, :cond_0

    .line 201
    :goto_0
    return-object v2

    .line 199
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method
