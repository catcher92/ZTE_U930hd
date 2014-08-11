.class public Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;
.super Ljava/lang/Object;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "privacy.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final PERMISSION_ACCESS_COARSE_LOCATION:Ljava/lang/String; = "access_coarse_location"

.field private static final PERMISSION_ACCESS_FINE_LOCATION:Ljava/lang/String; = "access_fine_location"

.field private static final PERMISSION_ACCESS_INTERNET:Ljava/lang/String; = "access_internet"

.field private static final PERMISSION_CALL_PHONE:Ljava/lang/String; = "call_phone"

.field private static final PERMISSION_ID:Ljava/lang/String; = "_id"

.field private static final PERMISSION_NAME:Ljava/lang/String; = "name"

.field private static final PERMISSION_READ_CONTACTS:Ljava/lang/String; = "read_contacts"

.field private static final PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "read_phone_state"

.field private static final PERMISSION_READ_SMS:Ljava/lang/String; = "read_sms"

.field private static final PERMISSION_RECEIVE_MMS:Ljava/lang/String; = "receive_mms"

.field private static final PERMISSION_RECEIVE_SMS:Ljava/lang/String; = "receive_sms"

.field private static final PERMISSION_RECEIVE_WAP_PUSH:Ljava/lang/String; = "receive_wap_push"

.field private static final PERMISSION_SEND_SMS:Ljava/lang/String; = "send_sms"

.field private static final PERMISSION_UID:Ljava/lang/String; = "uid"

.field private static final PERMISSION_WRITE_CONTACTS:Ljava/lang/String; = "write_contacts"

.field private static final PERMISSION_WRITE_SMS:Ljava/lang/String; = "write_sms"

.field private static final TABLE_PERMISSION_SETTING:Ljava/lang/String; = "permissionSetting"

.field private static final TAG:Ljava/lang/String; = "PermissionSettingsAdapter"


# instance fields
.field private final PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;

.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "send_sms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "call_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "write_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "read_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "read_sms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "write_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "receive_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "receive_mms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "receive_wap_push"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "read_phone_state"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "access_fine_location"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "access_coarse_location"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "access_internet"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mCtx:Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;

    .line 158
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    return-void
.end method

.method private addPackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 4
    .parameter "setting"

    .prologue
    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    iget-object v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "uid"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string/jumbo v1, "send_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v1, "call_phone"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string/jumbo v1, "write_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string/jumbo v1, "read_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string/jumbo v1, "read_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string/jumbo v1, "write_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string/jumbo v1, "receive_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string/jumbo v1, "receive_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string/jumbo v1, "receive_wap_push"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string/jumbo v1, "read_phone_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "access_fine_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v1, "access_coarse_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v1, "access_internet"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "permissionSetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 212
    return-void
.end method

.method private updatePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;I)V
    .locals 5
    .parameter "setting"
    .parameter "rowId"

    .prologue
    .line 215
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string/jumbo v1, "send_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "call_phone"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string/jumbo v1, "write_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string/jumbo v1, "read_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string/jumbo v1, "read_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string/jumbo v1, "write_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string/jumbo v1, "receive_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string/jumbo v1, "receive_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string/jumbo v1, "receive_wap_push"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string/jumbo v1, "read_phone_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v1, "access_fine_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "access_coarse_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "access_internet"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "permissionSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    return-void
.end method


# virtual methods
.method public deletePackageSetting(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "permissionSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 11
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 163
    const/4 v9, 0x0

    .line 165
    .local v9, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "permissionSetting"

    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    move-object v10, v9

    .line 168
    .end local v9           #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .local v10, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    invoke-direct {v9}, Lcom/zte/privacy/ZTEPackagePermissionSetting;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v10           #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v9       #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    .line 172
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    .line 173
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    .line 174
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    .line 175
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    .line 176
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    .line 177
    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    .line 178
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    .line 179
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    .line 180
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    .line 181
    const/16 v0, 0xb

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    .line 182
    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    .line 183
    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    .line 184
    const/16 v0, 0xe

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v9

    .end local v9           #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v10       #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    goto :goto_0

    .line 187
    :cond_0
    if-eqz v8, :cond_1

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    return-object v10

    .line 187
    :catchall_0
    move-exception v0

    move-object v9, v10

    .end local v10           #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v9       #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_1
    if-eqz v8, :cond_2

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 187
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 10
    .parameter "setting"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 233
    const/4 v9, -0x1

    .line 234
    .local v9, rowId:I
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "permissionSetting"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string/jumbo v3, "name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "uid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "name= ?"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 242
    :cond_0
    if-eqz v8, :cond_1

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v9, :cond_3

    .line 247
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->addPackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 251
    :goto_0
    return-void

    .line 242
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 249
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->updatePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;I)V

    goto :goto_0
.end method
