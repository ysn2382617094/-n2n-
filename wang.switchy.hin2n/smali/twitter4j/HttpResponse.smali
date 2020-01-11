.class public abstract Ltwitter4j/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/JSONObject;

.field private jsonArray:Ltwitter4j/JSONArray;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 117
    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 156
    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 34
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 117
    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 156
    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 38
    iput-object p1, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method private disconnectForcibly()V
    .locals 0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public asJSONArray()Ltwitter4j/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    new-instance v0, Ltwitter4j/JSONArray;

    new-instance v2, Ltwitter4j/JSONTokener;

    invoke-direct {v2, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v2}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    .line 173
    :cond_0
    :try_start_2
    new-instance v1, Ltwitter4j/JSONArray;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;
    :try_end_2
    .catch Ltwitter4j/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 181
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :catch_1
    :cond_1
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v1

    :catch_2
    nop

    :goto_2
    if-eqz v0, :cond_2

    .line 181
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    :catch_3
    :cond_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 188
    :cond_3
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    return-object v0
.end method

.method public asJSONObject()Ltwitter4j/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    new-instance v0, Ltwitter4j/JSONObject;

    new-instance v2, Ltwitter4j/JSONTokener;

    invoke-direct {v2, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v2}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 134
    :cond_0
    :try_start_2
    new-instance v1, Ltwitter4j/JSONObject;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;
    :try_end_2
    .catch Ltwitter4j/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v0, :cond_1

    .line 146
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    :catch_1
    :cond_1
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 138
    :goto_1
    :try_start_4
    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 139
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v1}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 141
    :cond_2
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v0, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 150
    :catch_3
    :cond_3
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v1

    .line 153
    :cond_4
    :goto_3
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 4

    .line 193
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public asStream()Ljava/io/InputStream;
    .locals 2

    .line 65
    iget-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :catch_0
    :cond_0
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    return-object v0

    .line 87
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 94
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    .line 101
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 107
    :catch_1
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 111
    :catch_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 97
    :goto_1
    :try_start_6
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 101
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 107
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 111
    :catch_7
    :cond_5
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v0

    .line 114
    :cond_6
    :goto_4
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    return-object v0
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public getStatusCode()I
    .locals 1

    .line 47
    iget v0, p0, Ltwitter4j/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
