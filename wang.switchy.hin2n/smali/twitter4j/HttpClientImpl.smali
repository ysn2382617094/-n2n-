.class Ltwitter4j/HttpClientImpl;
.super Ltwitter4j/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ltwitter4j/HttpResponseCode;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x599855c36357ce6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 41
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    return-void
.end method

.method public static getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;
    .locals 2

    .line 60
    sget-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/HttpClient;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ltwitter4j/HttpClientImpl;

    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 63
    sget-object v1, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 186
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Authorization"

    .line 188
    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 70
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Ltwitter4j/HttpClientImpl;->isProxyConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ltwitter4j/HttpClientImpl$1;

    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl$1;-><init>(Ltwitter4j/HttpClientImpl;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 216
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 217
    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 219
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 223
    :goto_0
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v0

    if-lez v0, :cond_2

    .line 224
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 226
    :cond_2
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v0

    if-lez v0, :cond_3

    .line 227
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_3
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method

.method public handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 80
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v0

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_a

    const/4 v8, -0x1

    .line 88
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object/from16 v9, p1

    .line 90
    :try_start_1
    invoke-direct {v1, v9, v0}, Ltwitter4j/HttpClientImpl;->setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v10

    invoke-virtual {v10}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v10

    sget-object v11, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-ne v10, v11, :cond_5

    .line 93
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/HttpParameter;->containsFile([Ltwitter4j/HttpParameter;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v10, :cond_4

    .line 94
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "----Twitter4J-upload"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Type"

    .line 95
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "multipart/form-data; boundary="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 99
    :try_start_3
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    aget-object v16, v13, v15

    .line 101
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"; filename=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 106
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->hasFileBody()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_0
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    .line 108
    new-array v4, v4, [B

    .line 110
    :goto_3
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v5, v8, :cond_1

    const/4 v8, 0x0

    .line 111
    :try_start_6
    invoke-virtual {v12, v4, v8, v5}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v8, -0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    const-string v4, "\r\n"

    .line 113
    invoke-virtual {v1, v12, v4}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v2, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    .line 118
    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write([B)V

    const-string v2, "\r\n"

    .line 120
    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v2, "\r\n"

    .line 124
    invoke-virtual {v1, v12, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v11

    const/4 v4, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_5
    move-object v2, v7

    const/4 v4, 0x1

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    const/4 v8, 0x0

    move-object v2, v7

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_4
    const/4 v8, 0x0

    :try_start_7
    const-string v2, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 127
    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "Content-Length"

    .line 131
    array-length v5, v2

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v4, 0x1

    .line 133
    :try_start_8
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 135
    :try_start_9
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 137
    :goto_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 138
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v4, 0x1

    goto :goto_b

    :cond_5
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 140
    :goto_7
    new-instance v2, Ltwitter4j/HttpResponseImpl;

    iget-object v10, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-direct {v2, v0, v10}, Ltwitter4j/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 141
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const/16 v0, 0xc8

    if-lt v7, v0, :cond_7

    const/16 v0, 0x12e

    if-eq v7, v0, :cond_6

    const/16 v0, 0x12c

    if-gt v0, v7, :cond_6

    goto :goto_8

    .line 156
    :cond_6
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_11

    :cond_7
    :goto_8
    const/16 v0, 0x1a4

    if-eq v7, v0, :cond_8

    const/16 v0, 0x190

    if-eq v7, v0, :cond_8

    const/16 v0, 0x1f4

    if-lt v7, v0, :cond_8

    .line 144
    :try_start_c
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 147
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eq v6, v0, :cond_8

    .line 156
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_10

    .line 148
    :cond_8
    :try_start_e
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v11, v5

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v11, v5

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v11, v5

    move-object v2, v7

    :goto_9
    const/4 v7, -0x1

    goto :goto_d

    :catchall_9
    move-exception v0

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object/from16 v9, p1

    :goto_a
    const/4 v4, 0x1

    const/4 v8, 0x0

    :goto_b
    move-object v2, v7

    :goto_c
    const/4 v7, -0x1

    const/4 v11, 0x0

    .line 156
    :goto_d
    :try_start_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_f

    .line 158
    :catch_1
    :goto_e
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    .line 162
    :goto_f
    iget-object v5, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v5}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v5

    if-eq v6, v5, :cond_9

    :catch_2
    :goto_10
    move-object v7, v2

    .line 168
    :try_start_11
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3

    :catch_3
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 163
    :cond_9
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v7}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_a
    move-object v2, v7

    :catch_4
    :goto_11
    return-object v2
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 74
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1
.end method
