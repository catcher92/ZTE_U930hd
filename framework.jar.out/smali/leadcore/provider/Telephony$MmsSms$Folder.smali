.class public final Lleadcore/provider/Telephony$MmsSms$Folder;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/provider/Telephony$MmsSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Folder"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ID_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_BLOCK:Ljava/lang/String; = "Block"

.field public static final NAME_DRAFT:Ljava/lang/String; = "Draft"

.field public static final NAME_ID_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_INBOX:Ljava/lang/String; = "Inbox"

.field public static final NAME_OUTBOX:Ljava/lang/String; = "Outbox"

.field public static final NAME_SECURITY:Ljava/lang/String; = "Security"

.field public static final NAME_SENT:Ljava/lang/String; = "Sent"

.field public static final NAME_SIMCARD:Ljava/lang/String; = "SIM Card"

.field public static final TPYE_PREISTALL:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CUSTOM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1

    .line 1871
    const-string v2, "content://mms-sms/folder"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    .line 1875
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    .line 1876
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->NAME_ID_MAP:Ljava/util/HashMap;

    .line 1879
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Inbox"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Outbox"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sent"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Draft"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SIM Card"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Block"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    const-wide/16 v3, 0x7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Security"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_0
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1887
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->NAME_ID_MAP:Ljava/util/HashMap;

    sget-object v3, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    add-long/2addr v0, v5

    goto :goto_0

    .line 1889
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1856
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clean(Landroid/content/Context;J)Z
    .locals 5
    .parameter "ctx"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2021
    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->exists(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/folder/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/clean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2023
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 2026
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return v1
.end method

.method public static final create(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "ctx"
    .parameter "name"

    .prologue
    .line 1983
    invoke-static {p0, p1}, Lleadcore/provider/Telephony$MmsSms$Folder;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    const/4 v1, 0x0

    .line 1990
    :goto_0
    return-object v1

    .line 1987
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1988
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static final createCounter(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2030
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    const-string v7, "0"

    .line 2063
    :goto_0
    return-object v7

    .line 2032
    :cond_0
    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->getName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 2033
    .local v6, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2034
    .local v7, ret:Ljava/lang/String;
    sget-object v0, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2035
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "read"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2037
    .local v8, total:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2041
    :cond_1
    const-string v7, "0"

    goto :goto_0

    .line 2044
    :cond_2
    const-string v0, "Inbox"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SIM Card"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Block"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Security"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->isPreinstall(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2049
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "read"

    aput-object v4, v2, v3

    const-string/jumbo v3, "read=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2051
    .local v9, unread:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2053
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2061
    .end local v9           #unread:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2056
    .restart local v9       #unread:Landroid/database/Cursor;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2059
    .end local v9           #unread:Landroid/database/Cursor;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static final delete(Landroid/content/Context;J)Z
    .locals 4
    .parameter "ctx"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2012
    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->exists(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2013
    sget-object v2, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2014
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 2017
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return v1
.end method

.method public static final delete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "ctx"
    .parameter "name"

    .prologue
    .line 2008
    invoke-static {p0, p1}, Lleadcore/provider/Telephony$MmsSms$Folder;->getID(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lleadcore/provider/Telephony$MmsSms$Folder;->delete(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method public static final exists(Landroid/content/Context;J)Z
    .locals 1
    .parameter "ctx"
    .parameter "id"

    .prologue
    .line 1979
    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->getName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final exists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "ctx"
    .parameter "name"

    .prologue
    .line 1975
    invoke-static {p0, p1}, Lleadcore/provider/Telephony$MmsSms$Folder;->getID(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getID(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .parameter "ctx"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1933
    const-wide/16 v7, -0x1

    .line 1934
    .local v7, id:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 1935
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1936
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1939
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1940
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1943
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1946
    :cond_1
    return-wide v7
.end method

.method public static final getName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1950
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1951
    const-string v0, "Telephony"

    const-string v1, "folderId <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :goto_0
    return-object v4

    .line 1954
    :cond_0
    sget-object v0, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1955
    sget-object v0, Lleadcore/provider/Telephony$MmsSms$Folder;->ID_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 1958
    :cond_1
    const/4 v7, 0x0

    .line 1959
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v8

    .line 1960
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1961
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1964
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1965
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1966
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1968
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v7

    .line 1971
    goto :goto_0
.end method

.method public static final isEmpty(Landroid/content/Context;J)Z
    .locals 8
    .parameter "ctx"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1913
    sget-object v0, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1915
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "read"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1917
    .local v7, total:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1918
    const/4 v6, 0x1

    .line 1920
    .local v6, ret:Z
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1921
    const/4 v6, 0x0

    .line 1925
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1928
    .end local v6           #ret:Z
    :cond_0
    return v6

    .line 1923
    .restart local v6       #ret:Z
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static final isEmpty(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "ctx"
    .parameter "name"

    .prologue
    .line 1909
    invoke-static {p0, p1}, Lleadcore/provider/Telephony$MmsSms$Folder;->getID(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lleadcore/provider/Telephony$MmsSms$Folder;->isEmpty(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method public static final isPreinstall(Landroid/content/Context;J)Z
    .locals 10
    .parameter "ctx"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1892
    const/4 v7, -0x1

    .line 1893
    .local v7, type:I
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v0, "type"

    aput-object v0, v2, v9

    .line 1894
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1895
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1898
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1899
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1902
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1905
    :cond_1
    if-nez v7, :cond_2

    move v0, v8

    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public static final rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 9
    .parameter "ctx"
    .parameter "id"
    .parameter "newName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1994
    invoke-static {p0, p1, p2}, Lleadcore/provider/Telephony$MmsSms$Folder;->exists(Landroid/content/Context;J)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0, p3}, Lleadcore/provider/Telephony$MmsSms$Folder;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1995
    sget-object v7, Lleadcore/provider/Telephony$MmsSms$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1997
    .local v3, uri:Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1998
    .local v2, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1999
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "name"

    invoke-virtual {v4, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v0, v7

    .line 2001
    .local v0, _id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_0

    .line 2003
    .end local v0           #_id:J
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .restart local v0       #_id:J
    .restart local v2       #selection:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_0
    move v5, v6

    .line 2001
    goto :goto_0

    .end local v0           #_id:J
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    move v5, v6

    .line 2003
    goto :goto_0
.end method
