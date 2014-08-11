.class public Lcom/zte/privacy/ZTEPrivacyContentProvider;
.super Ljava/lang/Object;
.source "ZTEPrivacyContentProvider.java"


# static fields
.field private static final DEFAULT_TABLE:Ljava/lang/String; = "empty_table"

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyContentProvider"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/privacy/ZTEPrivacyContentProvider;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDatabase()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/ZTEPrivacyContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    sget-object v0, Lcom/zte/privacy/ZTEPrivacyContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS empty_table (_id INTEGER PRIMARY KEY AUTOINCREMENT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static enforcePrivacyPermission(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "uri"
    .parameter "context"
    .parameter "permission"

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {p1}, Lcom/zte/privacy/ZTEPrivacyContentProvider;->isSecurityEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    if-eqz p0, :cond_2

    .line 95
    if-eqz p2, :cond_0

    .line 99
    const-string/jumbo v3, "privacy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPrivacyManager;

    .line 100
    .local v1, sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, p2, v3}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, res:I
    if-eqz v0, :cond_0

    .line 105
    .end local v0           #res:I
    .end local v1           #sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDefaultEmptyCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 63
    sget-object v1, Lcom/zte/privacy/ZTEPrivacyContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/zte/privacy/ZTEPrivacyContentProvider;->createDatabase()V

    .line 66
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 67
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "empty_table"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/zte/privacy/ZTEPrivacyContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private static isSecurityEnabled(Landroid/content/Context;)Z
    .locals 7
    .parameter "mContext"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "security_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    .local v0, enabled:I
    if-ne v0, v2, :cond_0

    .line 79
    .end local v0           #enabled:I
    :goto_0
    return v2

    .restart local v0       #enabled:I
    :cond_0
    move v2, v3

    .line 76
    goto :goto_0

    .line 77
    .end local v0           #enabled:I
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "ZTEPrivacyContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSecurityEnabled:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 79
    goto :goto_0
.end method
