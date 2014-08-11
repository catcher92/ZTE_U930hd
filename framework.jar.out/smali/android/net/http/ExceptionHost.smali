.class public Landroid/net/http/ExceptionHost;
.super Ljava/lang/Object;
.source "ExceptionHost.java"


# static fields
.field static MAX_HOST:I

.field static mEnabled:Z

.field static sExceptionHostList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x3

    sput v0, Landroid/net/http/ExceptionHost;->MAX_HOST:I

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/http/ExceptionHost;->mEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabled()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Landroid/net/http/ExceptionHost;->mEnabled:Z

    return v0
.end method

.method public static isInExceptionHostList(Ljava/lang/String;)Z
    .locals 6
    .parameter "host"

    .prologue
    const/4 v2, 0x0

    .line 36
    :try_start_0
    const-string v3, "isInExceptionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v3, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 38
    invoke-static {}, Landroid/net/http/ExceptionHost;->updateExceptionHostList()Z

    .line 42
    :cond_0
    sget-object v3, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 55
    :cond_1
    :goto_0
    return v2

    .line 46
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v3, Landroid/net/http/ExceptionHost;->MAX_HOST:I

    if-ge v1, v3, :cond_1

    .line 47
    sget-object v3, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    sget-object v3, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p0, v3}, Landroid/net/http/ExceptionHost;->match(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    .line 46
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 53
    .local v0, ee:Ljava/lang/Exception;
    const-string v3, "localhost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInExceptionHostList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "host"
    .parameter "exception"

    .prologue
    .line 59
    const-string v1, ".*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, index:I
    if-lez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_0
    const-string v1, "localhost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Landroid/net/http/ExceptionHost;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 23
    sput-boolean p0, Landroid/net/http/ExceptionHost;->mEnabled:Z

    .line 24
    return-void
.end method

.method public static declared-synchronized updateExceptionHostList()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 68
    const-class v6, Landroid/net/http/ExceptionHost;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "wlan.proxy.exceptions"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, hostString:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x2

    if-gt v5, v7, :cond_2

    .line 70
    :cond_0
    const/4 v5, 0x0

    sput-object v5, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    .line 71
    const-string v5, "localhost"

    const-string/jumbo v7, "updateExceptionHostList: empty"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    :goto_0
    monitor-exit v6

    return v1

    .line 75
    :cond_2
    :try_start_1
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, hosts:[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-nez v5, :cond_4

    .line 77
    :cond_3
    const/4 v5, 0x0

    sput-object v5, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    .line 78
    const-string v5, "localhost"

    const-string/jumbo v7, "updateExceptionHostList: invalid"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v3           #hosts:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 82
    .restart local v3       #hosts:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 83
    .local v1, hit:Z
    :try_start_2
    sget v5, Landroid/net/http/ExceptionHost;->MAX_HOST:I

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    .line 84
    const-string v5, "localhost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sExceptionHostList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    array-length v5, v3

    sget v7, Landroid/net/http/ExceptionHost;->MAX_HOST:I

    if-ge v5, v7, :cond_6

    array-length v0, v3

    .line 86
    .local v0, count:I
    :goto_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 87
    aget-object v5, v3, v4

    if-eqz v5, :cond_5

    .line 88
    const/4 v1, 0x1

    .line 89
    sget-object v5, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 90
    const-string v5, "localhost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local host added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/http/ExceptionHost;->sExceptionHostList:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 85
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_6
    sget v0, Landroid/net/http/ExceptionHost;->MAX_HOST:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
