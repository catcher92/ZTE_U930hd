.class public Lcom/zte/privacy/ZTEPrivacyManagerService;
.super Lcom/zte/privacy/IZTEPrivacyManager$Stub;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;,
        Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_PERMISSION_EVENT:Ljava/lang/String; = "permission.intent.action.PERMISSION_EVENT"

.field private static final APPROVED_LEVEL:I = 0x1

.field public static final APP_PERMISSION_DENIED:I = 0x1

.field public static final APP_PERMISSION_GRANTED:I = 0x0

.field public static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "permission.intent.extra.eventType"

.field public static final EXTRA_NEED_NOTIFY:Ljava/lang/String; = "permission.intent.extra.needNotify"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "permission.intent.extra.package"

.field public static final EXTRA_PERMISSION:Ljava/lang/String; = "permission.intent.extra.permission"

.field private static final SYS_CONTROL_PERMISSION_FILE:Ljava/lang/String; = "syscontrolpems.xml"

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManagerService"

.field private static final TAG_MANUFATURER_APPROVED:Ljava/lang/String; = "ManufaturerApproved"

.field private static final TAG_UN_APPROVED:Ljava/lang/String; = "unApproved"

.field private static final UN_APPROVED_LEVEL:I

.field private static final permissionCheckSync:Ljava/lang/Object;


# instance fields
.field private mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

.field private final mContext:Landroid/content/Context;

.field final mMApprovedControlPems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionEventRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUApprovedControlPems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final securityExtentionVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mUApprovedControlPems:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mMApprovedControlPems:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->securityExtentionVersion:I

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    .line 614
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    .line 615
    return-void
.end method

.method private clearAllAppPermissionEventRecords()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "clearAllAppPermissionEventRecords "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 280
    :cond_0
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearAppPermissionEventRecords(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, pkg:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    monitor-enter v3

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 300
    .local v1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    monitor-exit v3

    .line 305
    return-void

    .line 304
    .end local v1           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, mPkgname:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 288
    aget-object v0, v1, v3

    .line 293
    :goto_0
    return-object v0

    .line 291
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPermissionEventRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    .locals 5
    .parameter "pkg"
    .parameter "permission"

    .prologue
    .line 326
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 327
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 329
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 330
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;

    .line 331
    .local v1, mRecord:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    if-eqz v1, :cond_0

    .line 332
    iget-object v4, v1, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    .end local v0           #j:I
    .end local v1           #mRecord:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    .end local v3           #size:I
    :goto_1
    return-object v1

    .line 329
    .restart local v0       #j:I
    .restart local v1       #mRecord:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0           #j:I
    .end local v1           #mRecord:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    .end local v3           #size:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    .line 517
    .local v0, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    goto :goto_0

    .line 522
    :cond_2
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 524
    :cond_3
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    goto :goto_0

    .line 525
    :cond_4
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 526
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    goto :goto_0

    .line 527
    :cond_5
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 528
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    goto :goto_0

    .line 529
    :cond_6
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    goto :goto_0

    .line 531
    :cond_7
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 532
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    goto :goto_0

    .line 533
    :cond_8
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 534
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    goto :goto_0

    .line 535
    :cond_9
    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 536
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    goto :goto_0

    .line 537
    :cond_a
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 538
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    goto :goto_0

    .line 539
    :cond_b
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 540
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    goto :goto_0

    .line 541
    :cond_c
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 542
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    goto/16 :goto_0

    .line 543
    :cond_d
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 544
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    goto/16 :goto_0

    .line 545
    :cond_e
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    goto/16 :goto_0
.end method

.method private parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 11
    .parameter "parser"
    .parameter "trustLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 373
    const/4 v4, 0x0

    .line 375
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 376
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mUApprovedControlPems:Ljava/util/ArrayList;

    .line 385
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 388
    .local v1, outerDepth:I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_2

    if-ne v5, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 391
    :cond_1
    if-eq v5, v10, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 396
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, tagName:Ljava/lang/String;
    const-string v6, "ZTEPrivacyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tagName is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string/jumbo v6, "permission"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 399
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, permission:Ljava/lang/String;
    const-string v6, "ZTEPrivacyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "permission is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 404
    .end local v1           #outerDepth:I
    .end local v2           #permission:Ljava/lang/String;
    .end local v3           #tagName:Ljava/lang/String;
    .end local v5           #type:I
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "ZTEPrivacyManagerService"

    const-string v7, "Error readTrustLevelConPems"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-void

    .line 377
    :cond_3
    if-ne p2, v9, :cond_4

    .line 378
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mMApprovedControlPems:Ljava/util/ArrayList;

    goto :goto_0

    .line 380
    :cond_4
    const-string v6, "ZTEPrivacyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "erro trustLevel :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .local v0, e:Ljava/io/IOException;
    const-string v6, "ZTEPrivacyManagerService"

    const-string v7, "Error readTrustLevelConPems"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readSysControlPermissonsLocked(Ljava/io/File;)V
    .locals 11
    .parameter "file"

    .prologue
    const/4 v10, 0x1

    .line 412
    const/4 v3, 0x0

    .line 413
    .local v3, stream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 416
    .local v5, success:Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 417
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 418
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 421
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 422
    .local v7, type:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 423
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v8, "policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 426
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v8, "unApproved"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 428
    const-string v8, "ZTEPrivacyManagerService"

    const-string/jumbo v9, "sysPolicy:UnApproved"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v8, 0x0

    invoke-direct {p0, v2, v8}, Lcom/zte/privacy/ZTEPrivacyManagerService;->parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 436
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v7, v10, :cond_0

    .line 437
    const/4 v5, 0x1

    move-object v3, v4

    .line 450
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 451
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 456
    :cond_2
    :goto_2
    return-void

    .line 430
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_3
    :try_start_3
    const-string v8, "ManufaturerApproved"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 431
    const-string v8, "ZTEPrivacyManagerService"

    const-string/jumbo v9, "sysPolicy:ManufaturerApproved"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v8, 0x1

    invoke-direct {p0, v2, v8}, Lcom/zte/privacy/ZTEPrivacyManagerService;->parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 438
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #type:I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 439
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_3
    const-string v8, "ZTEPrivacyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 440
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v8, "ZTEPrivacyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 442
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 443
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v8, "ZTEPrivacyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 444
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 445
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v8, "ZTEPrivacyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 446
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v8, "ZTEPrivacyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 453
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v8

    goto/16 :goto_2

    .line 446
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 444
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 442
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 440
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 438
    :catch_a
    move-exception v0

    goto/16 :goto_3
.end method

.method private sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "pkg"
    .parameter "permission"
    .parameter "type"
    .parameter "needNotify"

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 345
    .local v1, now:J
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionEventRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;

    move-result-object v3

    .line 346
    .local v3, record:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    if-eqz v3, :cond_0

    .line 347
    const-string v4, "ZTEPrivacyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendPermissionEventBroadcast -pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", permission is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "now is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lasttime is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->timeStamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-wide v4, v3, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->timeStamp:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 362
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v4, "ZTEPrivacyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendPermissionEventBroadcast -pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", permission is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->updatePermissionEventRecords(Ljava/lang/String;Ljava/lang/String;J)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "permission.intent.action.PERMISSION_EVENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v4, "permission.intent.extra.package"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v4, "permission.intent.extra.permission"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v4, "permission.intent.extra.eventType"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string/jumbo v4, "permission.intent.extra.needNotify"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shouldBeControled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "permission"

    .prologue
    const/4 v1, 0x1

    .line 487
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageTrustLevel(Ljava/lang/String;)I

    move-result v0

    .line 488
    .local v0, pkgTrustLevel:I
    if-nez v0, :cond_1

    .line 490
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mUApprovedControlPems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 492
    :cond_1
    if-ne v1, v0, :cond_2

    .line 493
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mMApprovedControlPems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sysControlPermissonsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    const-string v1, "etc/security/syscontrolpems.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updatePermissionEventRecords(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "pkg"
    .parameter "permission"
    .parameter "timestamp"

    .prologue
    .line 308
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 309
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    if-nez v2, :cond_0

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .restart local v2       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;>;"
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 315
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 316
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;

    .line 317
    .local v1, record:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    iget-object v4, v1, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    iput-wide p3, v1, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->timeStamp:J

    .line 323
    .end local v1           #record:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    :goto_1
    return-void

    .line 315
    .restart local v1       #record:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1           #record:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
    :cond_2
    new-instance v4, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 1
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkUserPolicyPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkUserPolicyPermission(Ljava/lang/String;I)I
    .locals 8
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 553
    invoke-direct {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, mPkgname:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->shouldBeControled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 574
    :goto_0
    return v2

    .line 557
    :cond_0
    const-string v4, "ZTEPrivacyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUserPolicyPermission enter , permission is :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPkgname is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v1, 0x0

    .line 562
    .local v1, mPolicy:I
    sget-object v4, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v4

    .line 563
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 564
    if-nez v1, :cond_1

    .line 565
    const-string v3, "ZTEPrivacyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in PMS: app- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s runningpolicy is permitted, so let it go!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    monitor-exit v4

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 568
    :cond_1
    if-ne v7, v1, :cond_2

    .line 569
    :try_start_1
    const-string v2, "ZTEPrivacyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in PMS: app- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s runningpolicy is refused!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v0, p1, v2, v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 571
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 573
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 574
    goto/16 :goto_0
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->deletePackageSetting(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageTrustLevel(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    :goto_0
    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_1
    return v1

    .line 479
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v1, v2

    .line 482
    goto :goto_1

    .line 472
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 618
    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, " in init!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->readSysControlPermissons()V

    .line 620
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

    .line 621
    return-void
.end method

.method readSysControlPermissons()V
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sysControlPermissonsFile()Ljava/io/File;

    move-result-object v0

    .line 460
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-direct {p0, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->readSysControlPermissonsLocked(Ljava/io/File;)V

    .line 463
    :cond_0
    return-void
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 590
    if-nez p1, :cond_0

    .line 591
    const-string v0, "ZTEPrivacyManagerService"

    const-string/jumbo v1, "savePackageSetting:: setting is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    goto :goto_0
.end method

.method public setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 504
    const-string v0, "ZTEPrivacyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "savePackageSetting:: write_contacts is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receive_sms is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", send_sms is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call_phone is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", read_phone_state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", access_fine_location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", access_internet is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionSettingsAdapter;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 512
    return-void
.end method
