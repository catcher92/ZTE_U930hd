.class public final Lleadcore/dcm/DataConnectivityHelper;
.super Ljava/lang/Object;
.source "DataConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final EXTRA_SET_DATA_ON_BOOT_ENABLE:Ljava/lang/String; = "enable"

.field private static final ID_INDEX:I = 0x0

.field private static final INTENT_ACTION_SET_DATA_ON_BOOT:Ljava/lang/String; = "com.android.internal.telephony.setDataOnBoot"

.field private static final MCC_INDEX:I = 0x9

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xc

.field private static final MMSPROXY_INDEX:I = 0xb

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROXY_INDEX:I = 0x3

.field private static final SERVER_INDEX:I = 0x6

.field private static final TYPE_INDEX:I = 0xd

.field private static final USER_INDEX:I = 0x5

.field private static final sApnProjection:[Ljava/lang/String; = null

.field private static final sWhereClause:Ljava/lang/String; = "( numeric = ? ) AND ( type = ? )"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lleadcore/dcm/DataConnectivityHelper;->sApnProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApnSettings(Landroid/content/Context;Ljava/lang/String;)[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    .locals 24
    .parameter "context"
    .parameter "apGroup"

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "46000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 127
    .local v22, numeric:Ljava/lang/String;
    sget-object v3, Lleadcore/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lleadcore/dcm/DataConnectivityHelper;->sApnProjection:[Ljava/lang/String;

    const-string v5, "( numeric = ? ) AND ( type = ? )"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 129
    .local v18, c:Landroid/database/Cursor;
    if-eqz v18, :cond_1

    .line 130
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Lleadcore/dcm/DataConnectivityHelper$ApnSetting;

    move-object/from16 v23, v0

    .line 132
    .local v23, result:[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    const/16 v20, 0x0

    .local v20, i:I
    move/from16 v21, v20

    .line 133
    .end local v20           #i:I
    .local v21, i:I
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    add-int/lit8 v20, v21, 0x1

    .end local v21           #i:I
    .restart local v20       #i:I
    :try_start_1
    new-instance v3, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v23, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v21, v20

    .end local v20           #i:I
    .restart local v21       #i:I
    goto :goto_0

    .line 144
    :cond_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 147
    .end local v21           #i:I
    .end local v23           #result:[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    :goto_1
    return-object v23

    .line 141
    .restart local v21       #i:I
    .restart local v23       #result:[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    :catch_0
    move-exception v19

    move/from16 v20, v21

    .line 142
    .end local v21           #i:I
    .local v19, e:Ljava/lang/Exception;
    .restart local v20       #i:I
    :goto_2
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 147
    .end local v19           #e:Ljava/lang/Exception;
    .end local v20           #i:I
    .end local v23           #result:[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    .line 144
    .restart local v23       #result:[Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
    :catchall_0
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 141
    .restart local v20       #i:I
    :catch_1
    move-exception v19

    goto :goto_2
.end method

.method public static final getDataOnBootEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public static final getProxyAndPort(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "feature"
    .parameter "apn"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v1, "( "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "numeric"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "46000"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ) AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    if-eqz p2, :cond_0

    .line 245
    const-string v1, " AND ( "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    sget-object v1, Lleadcore/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "proxy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "port"

    aput-object v3, v2, v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 256
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, proxy:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, port:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v8           #port:Ljava/lang/String;
    .end local v9           #proxy:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 263
    .restart local v8       #port:Ljava/lang/String;
    .restart local v9       #proxy:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #port:Ljava/lang/String;
    .end local v9           #proxy:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 265
    :catch_0
    move-exception v7

    .line 266
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static final setDataOnBootEnabled(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 219
    return-void
.end method

.method public static final setPreferApn(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 13
    .parameter "context"
    .parameter "apGroup"
    .parameter "apnId"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "46000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, numeric:Ljava/lang/String;
    sget-object v1, Lleadcore/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "min(sort)"

    aput-object v3, v2, v11

    const-string v3, "( numeric = ? ) AND ( type = ? )"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v11

    aput-object p1, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    .local v9, tempCur:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 163
    .local v6, minSort:I
    if-eqz v9, :cond_1

    .line 165
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 169
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "sort"

    add-int/lit8 v2, v6, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "numeric"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ) AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ) AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    sget-object v1, Lleadcore/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    return-void

    .line 169
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method
