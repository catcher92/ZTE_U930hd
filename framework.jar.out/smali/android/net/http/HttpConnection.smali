.class Landroid/net/http/HttpConnection;
.super Landroid/net/http/Connection;
.source "HttpConnection.java"


# static fields
.field private static isCurrentChromeStack:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "ro.use.chrome.stack"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/net/http/HttpConnection;->isCurrentChromeStack:Z

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 0
    .parameter "context"
    .parameter "host"
    .parameter "requestFeeder"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 60
    iput-object p1, p0, Landroid/net/http/HttpConnection;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private isUrlExcluded(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    .line 133
    iget-object v3, p0, Landroid/net/http/HttpConnection;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 135
    .local v1, lp:Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    .line 136
    .local v2, proxy:Landroid/net/ProxyProperties;
    if-eqz v2, :cond_0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUrlExcluded(): found excluded url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, p1}, Landroid/net/ProxyProperties;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    .line 140
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private reverseForSrcAddr()Ljava/net/InetAddress;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 146
    .local v2, curPid:I
    iget-object v11, p0, Landroid/net/http/HttpConnection;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 147
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v11, 0x3

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 150
    .local v9, typeArray:[I
    move-object v0, v9

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v8, v0, v3

    .line 151
    .local v8, type:I
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 152
    .local v7, ni:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 153
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 154
    .local v6, lp:Landroid/net/LinkProperties;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getPid()I

    move-result v11

    if-ne v2, v11, :cond_1

    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reverseForSrcAddr: data link "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " found for process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 157
    .local v4, ir:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 158
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 170
    .end local v6           #lp:Landroid/net/LinkProperties;
    .end local v7           #ni:Landroid/net/NetworkInfo;
    .end local v8           #type:I
    :cond_0
    :goto_1
    return-object v10

    .line 150
    .end local v4           #ir:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .restart local v7       #ni:Landroid/net/NetworkInfo;
    .restart local v8       #type:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v7           #ni:Landroid/net/NetworkInfo;
    .end local v8           #type:I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reverseForSrcAddr: data link not found for process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", using default link"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 166
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 167
    .restart local v4       #ir:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    goto :goto_1

    .line 147
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method closeConnection()V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeConnection(): failed closing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "http"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 9
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 72
    const-string/jumbo v5, "openConnection: E"

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v1

    .line 75
    .local v1, eventHandler:Landroid/net/http/EventHandler;
    iput-object v8, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 76
    iget-object v5, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v1, v5}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 78
    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 79
    .local v0, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 82
    .local v2, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v5, "gsm.multi.ps.wlan"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    const-string/jumbo v5, "openConnection(): leadcore browser using PS"

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Landroid/net/http/HttpConnection;->reverseForSrcAddr()Ljava/net/InetAddress;

    move-result-object v4

    .line 85
    .local v4, srcAddr:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/Socket;

    iget-object v5, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6, v4, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 95
    .end local v4           #srcAddr:Ljava/net/InetAddress;
    .local v3, sock:Ljava/net/Socket;
    :goto_0
    const-string v5, "http.socket.buffer-size"

    const/16 v6, 0x2000

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 96
    invoke-virtual {v0, v3, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 97
    return-object v0

    .line 87
    .end local v3           #sock:Ljava/net/Socket;
    :cond_0
    const-string/jumbo v5, "openConnection(): leadcore browser using Wlan"

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 88
    sget-boolean v5, Landroid/net/http/HttpConnection;->isCurrentChromeStack:Z

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/http/HttpConnection;->isUrlExcluded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-virtual {p1}, Landroid/net/http/Request;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/http/Request;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6, v8, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .restart local v3       #sock:Ljava/net/Socket;
    goto :goto_0

    .line 91
    .end local v3           #sock:Ljava/net/Socket;
    :cond_2
    new-instance v3, Ljava/net/Socket;

    iget-object v5, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6, v8, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .restart local v3       #sock:Ljava/net/Socket;
    goto :goto_0
.end method

.method restartConnection(Z)V
    .locals 0
    .parameter "abort"

    .prologue
    .line 126
    return-void
.end method
