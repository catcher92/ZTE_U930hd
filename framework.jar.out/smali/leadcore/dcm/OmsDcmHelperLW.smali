.class public Lleadcore/dcm/OmsDcmHelperLW;
.super Ljava/lang/Object;
.source "OmsDcmHelperLW.java"


# static fields
.field private static final ACTION_OPEN_CONNECTION:Ljava/lang/String; = "oms.dcmhelperlw.action.OPEN_CONNECTION"

.field private static final DB_KEY_INTERROGATION:Ljava/lang/String; = "interrogation"

.field private static final DB_KEY_OPENCONN:Ljava/lang/String; = "openConn"

.field private static final DB_KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final DB_KEY_VENDOR:Ljava/lang/String; = "vendor"

.field private static final DCMHELPERLW_CONF_ETC:Ljava/lang/String; = "/system/etc/dcmhelperlw_special_apps.conf"

.field private static final DCMHELPERLW_CONF_OPL:Ljava/lang/String; = "/opl/etc/dcmhelperlw_special_apps.conf"

.field private static final PROJECTION_PROCESS:[Ljava/lang/String; = null

.field private static final PROJECTION_STATUS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DcmHelperLw-framework"

.field private static final URL_DCMHELPER_APPS:Landroid/net/Uri; = null

.field private static final URL_DCMHELPER_STATUS:Landroid/net/Uri; = null

.field private static final VENDOR_3RD_PARTY:Ljava/lang/String; = "3rd_party"

.field private static instance:Lleadcore/dcm/OmsDcmHelperLW;

.field private static mContext:Landroid/content/Context;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mIsNewPackage:Z

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mPackageName:Ljava/lang/String;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mSpecialPackageList:Ljava/util/ArrayList;

.field private static mStartServiceIntent:Landroid/content/Intent;

.field private static mUrl:Landroid/net/Uri;

.field private static mUserSelectedIndex:I


# instance fields
.field private saveStateListener:Landroid/content/DialogInterface$OnClickListener;

.field private sigleChooseListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    sput-object v1, Lleadcore/dcm/OmsDcmHelperLW;->instance:Lleadcore/dcm/OmsDcmHelperLW;

    .line 57
    sput v3, Lleadcore/dcm/OmsDcmHelperLW;->mUserSelectedIndex:I

    .line 58
    sput-boolean v4, Lleadcore/dcm/OmsDcmHelperLW;->mIsNewPackage:Z

    .line 60
    const-string v0, "content://dcmhelperlw/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->URL_DCMHELPER_STATUS:Landroid/net/Uri;

    .line 61
    const-string v0, "content://dcmhelperlw/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->URL_DCMHELPER_APPS:Landroid/net/Uri;

    .line 62
    sput-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mUrl:Landroid/net/Uri;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oms.dcmhelperlw.action.OPEN_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mStartServiceIntent:Landroid/content/Intent;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "interrogation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "openConn"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->PROJECTION_PROCESS:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "status"

    aput-object v1, v0, v3

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->PROJECTION_STATUS:[Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mSpecialPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lleadcore/dcm/OmsDcmHelperLW$1;

    invoke-direct {v0, p0}, Lleadcore/dcm/OmsDcmHelperLW$1;-><init>(Lleadcore/dcm/OmsDcmHelperLW;)V

    iput-object v0, p0, Lleadcore/dcm/OmsDcmHelperLW;->sigleChooseListener:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    new-instance v0, Lleadcore/dcm/OmsDcmHelperLW$2;

    invoke-direct {v0, p0}, Lleadcore/dcm/OmsDcmHelperLW$2;-><init>(Lleadcore/dcm/OmsDcmHelperLW;)V

    iput-object v0, p0, Lleadcore/dcm/OmsDcmHelperLW;->saveStateListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    sput-object p1, Lleadcore/dcm/OmsDcmHelperLW;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mResolver:Landroid/content/ContentResolver;

    .line 78
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->initSpecialPackageList()V

    .line 79
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lleadcore/dcm/OmsDcmHelperLW;->mUserSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput p0, Lleadcore/dcm/OmsDcmHelperLW;->mUserSelectedIndex:I

    return p0
.end method

.method static synthetic access$100(Lleadcore/dcm/OmsDcmHelperLW;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->startConnection()V

    return-void
.end method

.method private addToPackageList(Ljava/lang/String;)V
    .locals 8
    .parameter "fileName"

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v4

    .line 138
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :cond_1
    move-object v3, v4

    .line 117
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :goto_1
    const/4 v0, 0x0

    .line 119
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 120
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 121
    .local v5, pkgName:Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lleadcore/dcm/OmsDcmHelperLW;->mSpecialPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    sget-object v6, Lleadcore/dcm/OmsDcmHelperLW;->mSpecialPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 127
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 128
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #pkgName:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v6, "DcmHelperLw-framework"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v0, :cond_0

    .line 132
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v6

    goto :goto_0

    .line 114
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 115
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_4
    const-string v6, "DcmHelperLw-framework"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_5

    .line 132
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .line 135
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 133
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    move-object v0, v1

    .line 135
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 130
    .end local v5           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_4

    .line 132
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 135
    :cond_4
    :goto_6
    throw v6

    .line 133
    :catch_4
    move-exception v7

    goto :goto_6

    .line 130
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #pkgName:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 127
    .end local v5           #pkgName:Ljava/lang/String;
    :catch_5
    move-exception v2

    goto :goto_3

    .line 114
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_4

    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static final getInstance(Landroid/content/Context;)Lleadcore/dcm/OmsDcmHelperLW;
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->instance:Lleadcore/dcm/OmsDcmHelperLW;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lleadcore/dcm/OmsDcmHelperLW;

    invoke-direct {v0, p0}, Lleadcore/dcm/OmsDcmHelperLW;-><init>(Landroid/content/Context;)V

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->instance:Lleadcore/dcm/OmsDcmHelperLW;

    .line 86
    :cond_0
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->instance:Lleadcore/dcm/OmsDcmHelperLW;

    return-object v0
.end method

.method private initSpecialPackageList()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "/system/etc/dcmhelperlw_special_apps.conf"

    invoke-direct {p0, v0}, Lleadcore/dcm/OmsDcmHelperLW;->addToPackageList(Ljava/lang/String;)V

    .line 104
    const-string v0, "/opl/etc/dcmhelperlw_special_apps.conf"

    invoke-direct {p0, v0}, Lleadcore/dcm/OmsDcmHelperLW;->addToPackageList(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private isDcmHelperLwEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 221
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->URL_DCMHELPER_STATUS:Landroid/net/Uri;

    sget-object v2, Lleadcore/dcm/OmsDcmHelperLW;->PROJECTION_STATUS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, tempCur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 225
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 233
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 233
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isExistDataConnection()Z
    .locals 3

    .prologue
    .line 179
    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedDataConnection(Ljava/lang/String;)Z
    .locals 11
    .parameter "pkgName"

    .prologue
    const/4 v8, 0x0

    .line 149
    :try_start_0
    sget-object v9, Lleadcore/dcm/OmsDcmHelperLW;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x1000

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 150
    .local v7, pkgInfo:Landroid/content/pm/PackageInfo;
    sget-object v9, Lleadcore/dcm/OmsDcmHelperLW;->mSpecialPackageList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v9}, Lleadcore/dcm/OmsDcmHelperLW;->isPreloadedApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v8

    .line 174
    .end local v7           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 154
    .restart local v7       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 155
    .local v0, Perms:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 156
    .local v3, flag:Z
    if-eqz v0, :cond_3

    .line 157
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, v1, v4

    .line 158
    .local v6, perm:Ljava/lang/String;
    const-string v9, "android.permission.INTERNET"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    const/4 v3, 0x1

    .line 157
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #perm:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->isExistDataConnection()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->startConnection()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    .line 168
    goto :goto_0

    .line 172
    .end local v0           #Perms:[Ljava/lang/String;
    .end local v3           #flag:Z
    .end local v7           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "DcmHelperLw-framework"

    const-string v10, "isNeedDataConnection: PackageName Not Found!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 174
    goto :goto_0
.end method

.method private isPreloadedApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgDir"

    .prologue
    .line 140
    if-eqz p1, :cond_1

    const-string v0, "/system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/opl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processByPackageName(Ljava/lang/String;)V
    .locals 10
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->URL_DCMHELPER_APPS:Landroid/net/Uri;

    sget-object v2, Lleadcore/dcm/OmsDcmHelperLW;->PROJECTION_PROCESS:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    .local v8, tempCur:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lleadcore/dcm/OmsDcmHelperLW;->mIsNewPackage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->showDcmHelperDialog()V

    .line 218
    :goto_1
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lleadcore/dcm/OmsDcmHelperLW;->mIsNewPackage:Z

    .line 196
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->URL_DCMHELPER_APPS:Landroid/net/Uri;

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mUrl:Landroid/net/Uri;

    .line 197
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 198
    .local v6, interrogation:I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 202
    .local v7, openconn:I
    if-nez v6, :cond_4

    .line 203
    if-ne v9, v7, :cond_3

    .line 204
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->startConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 208
    :cond_4
    if-ne v9, v7, :cond_0

    .line 209
    const/4 v0, 0x1

    :try_start_2
    sput v0, Lleadcore/dcm/OmsDcmHelperLW;->mUserSelectedIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 214
    .end local v6           #interrogation:I
    .end local v7           #openconn:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private showDcmHelperDialog()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x10404db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404dc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404dd

    iget-object v3, p0, Lleadcore/dcm/OmsDcmHelperLW;->saveStateListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404de

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mDialog:Landroid/app/AlertDialog;

    .line 246
    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 247
    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 248
    return-void
.end method

.method private startConnection()V
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mStartServiceIntent:Landroid/content/Intent;

    const-string v1, "PackageName"

    sget-object v2, Lleadcore/dcm/OmsDcmHelperLW;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mContext:Landroid/content/Context;

    sget-object v1, Lleadcore/dcm/OmsDcmHelperLW;->mStartServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    return-void
.end method


# virtual methods
.method public final omsDcmHelperCheck(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mPackageName:Ljava/lang/String;

    .line 95
    sget-object v0, Lleadcore/dcm/OmsDcmHelperLW;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lleadcore/dcm/OmsDcmHelperLW;->isNeedDataConnection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->isDcmHelperLwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lleadcore/dcm/OmsDcmHelperLW;->showDcmHelperDialog()V

    goto :goto_0
.end method
