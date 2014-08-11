.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Network$1;,
        Landroid/webkit/Network$RoamingMonitor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sHost:Ljava/lang/String;

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z

.field private static sPort:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mRoaming:Z

.field private mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    sput v0, Landroid/webkit/Network;->sPort:I

    .line 304
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandlerImpl;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    .line 165
    new-instance v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandlerImpl;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    .line 167
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 169
    sget-object v0, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroid/webkit/Network;->setProxyInternal()V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/webkit/Network;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/webkit/Network;->mRoaming:Z

    return p1
.end method

.method public static disablePlatformNotifications()V
    .locals 1

    .prologue
    .line 144
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 147
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->stopMonitoringRoaming()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 129
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_0

    .line 130
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 132
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->monitorRoaming()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    const-class v1, Landroid/webkit/Network;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 113
    sget-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v0, :cond_0

    .line 117
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 118
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 121
    :cond_0
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private monitorRoaming()V
    .locals 3

    .prologue
    .line 187
    new-instance v1, Landroid/webkit/Network$RoamingMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/Network$RoamingMonitor;-><init>(Landroid/webkit/Network;Landroid/webkit/Network$1;)V

    iput-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v2, v2, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public static setProxy(Ljava/lang/String;I)V
    .locals 1
    .parameter "host"
    .parameter "port"

    .prologue
    .line 291
    sput p1, Landroid/webkit/Network;->sPort:I

    .line 292
    sput-object p0, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    .line 294
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->setProxyInternal()V

    goto :goto_0
.end method

.method private setProxyInternal()V
    .locals 3

    .prologue
    .line 307
    sget v0, Landroid/webkit/Network;->sPort:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    const-string v1, "10.0.0.172"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/LoadListener;->useCmccWapGateway(Z)V

    .line 313
    :goto_0
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    sget-object v1, Landroid/webkit/Network;->sHost:Ljava/lang/String;

    sget v2, Landroid/webkit/Network;->sPort:I

    invoke-virtual {v0, v1, v2}, Landroid/net/http/RequestQueue;->setProxyHost(Ljava/lang/String;I)V

    .line 316
    :cond_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/LoadListener;->useCmccWapGateway(Z)V

    goto :goto_0
.end method

.method private stopMonitoringRoaming()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 1
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 407
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 408
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUserSslPrefTable()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandlerImpl;->clear()V

    .line 391
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandlerImpl;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 424
    :cond_0
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 403
    :cond_0
    return-void
.end method

.method public isValidProxySet()Z
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .locals 9
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-boolean v3, p0, Landroid/webkit/Network;->mRoaming:Z

    if-eqz v3, :cond_2

    const-string v3, "X-Moz"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "prefetch"

    const-string v4, "X-Moz"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    :cond_2
    const/4 v6, 0x0

    .line 236
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 237
    .local v7, bodyLength:I
    if-eqz p3, :cond_3

    .line 238
    array-length v7, p3

    .line 239
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 243
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v8, 0x0

    .line 244
    .local v8, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 247
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 248
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 249
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 261
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 258
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "inState"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "outState"

    .prologue
    .line 369
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyPassword"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyUsername"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 429
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 433
    return-void
.end method
