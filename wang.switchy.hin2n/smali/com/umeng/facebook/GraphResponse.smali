.class public Lcom/umeng/facebook/GraphResponse;
.super Ljava/lang/Object;
.source "GraphResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/GraphResponse$PagingDirection;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field public static final SUCCESS_KEY:Ljava/lang/String; = "success"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/umeng/facebook/FacebookRequestError;

.field private final graphObject:Lorg/json/JSONObject;

.field private final graphObjectArray:Lorg/json/JSONArray;

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/umeng/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/umeng/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/umeng/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/umeng/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/umeng/facebook/FacebookRequestError;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/umeng/facebook/GraphResponse;->request:Lcom/umeng/facebook/GraphRequest;

    .line 100
    iput-object p2, p0, Lcom/umeng/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 101
    iput-object p3, p0, Lcom/umeng/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/umeng/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 103
    iput-object p5, p0, Lcom/umeng/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    .line 104
    iput-object p6, p0, Lcom/umeng/facebook/GraphResponse;->error:Lcom/umeng/facebook/FacebookRequestError;

    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/umeng/facebook/FacebookException;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 447
    new-instance v3, Lcom/umeng/facebook/GraphResponse;

    .line 448
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/facebook/GraphRequest;

    new-instance v5, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    .line 451
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createResponseFromObject(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/facebook/GraphResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 402
    instance-of v0, p2, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 403
    check-cast p2, Lorg/json/JSONObject;

    .line 406
    invoke-static {p2, p3, p1}, Lcom/umeng/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/umeng/facebook/FacebookRequestError;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 411
    invoke-virtual {p3}, Lcom/umeng/facebook/FacebookRequestError;->getErrorCode()I

    move-result p2

    const/16 v0, 0xbe

    if-ne p2, v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest;->getAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 413
    invoke-static {v1}, Lcom/umeng/facebook/AccessToken;->setCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)V

    .line 415
    :cond_0
    new-instance p2, Lcom/umeng/facebook/GraphResponse;

    invoke-direct {p2, p0, p1, p3}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    return-object p2

    :cond_1
    const-string p3, "body"

    const-string v0, "FACEBOOK_NON_JSON_RESULT"

    .line 418
    invoke-static {p2, p3, v0}, Lcom/umeng/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 423
    instance-of p3, p2, Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    .line 424
    new-instance p3, Lcom/umeng/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3

    .line 425
    :cond_2
    instance-of p3, p2, Lorg/json/JSONArray;

    if-eqz p3, :cond_3

    .line 426
    new-instance p3, Lcom/umeng/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object p3

    .line 429
    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 432
    :cond_4
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, p3, :cond_5

    .line 433
    new-instance p3, Lcom/umeng/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3

    .line 435
    :cond_5
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got unexpected object type in response, class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/facebook/GraphRequest;

    .line 337
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "body"

    .line 338
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    goto :goto_0

    :cond_0
    const/16 v5, 0xc8

    :goto_0
    const-string v6, "code"

    .line 340
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 343
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 354
    new-instance v5, Lcom/umeng/facebook/GraphResponse;

    new-instance v6, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    .line 348
    new-instance v5, Lcom/umeng/facebook/GraphResponse;

    new-instance v6, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v5, p2

    .line 362
    :goto_2
    instance-of v3, v5, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 368
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 369
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/GraphRequest;

    .line 371
    :try_start_1
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 373
    invoke-static {v0, p0, v3, p2}, Lcom/umeng/facebook/GraphResponse;->createResponseFromObject(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/facebook/GraphResponse;

    move-result-object v3

    .line 372
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/umeng/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    .line 385
    new-instance v4, Lcom/umeng/facebook/GraphResponse;

    new-instance v6, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_3
    move-exception v3

    .line 379
    new-instance v4, Lcom/umeng/facebook/GraphResponse;

    new-instance v6, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/umeng/facebook/GraphResponse;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-object v1

    .line 363
    :cond_3
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Unexpected number of results"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/umeng/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-static {p0, p1, p2}, Lcom/umeng/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/umeng/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    .line 306
    invoke-static {p1, p2, p0}, Lcom/umeng/facebook/GraphResponse;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/umeng/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 260
    :goto_1
    invoke-static {v0, p0, p1}, Lcom/umeng/facebook/GraphResponse;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/umeng/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 278
    :try_start_1
    new-instance v2, Lcom/umeng/facebook/FacebookException;

    invoke-direct {v2, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/umeng/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_1
    move-exception v1

    .line 267
    :try_start_2
    invoke-static {p1, p0, v1}, Lcom/umeng/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_2
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/umeng/facebook/FacebookRequestError;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->error:Lcom/umeng/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getJSONArray()Lorg/json/JSONArray;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequest()Lcom/umeng/facebook/GraphRequest;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->request:Lcom/umeng/facebook/GraphRequest;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 227
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/umeng/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/umeng/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 230
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0xc8

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 227
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    .line 235
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Response: "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " responseCode: "

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", graphObject: "

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/umeng/facebook/GraphResponse;->error:Lcom/umeng/facebook/FacebookRequestError;

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
