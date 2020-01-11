.class public Lcom/umeng/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/umeng/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/umeng/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/umeng/facebook/GraphRequest$OnProgressCallback;,
        Lcom/umeng/facebook/GraphRequest$Callback;,
        Lcom/umeng/facebook/GraphRequest$Serializer;,
        Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;,
        Lcom/umeng/facebook/GraphRequest$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field public static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final DEBUG_KEY:Ljava/lang/String; = "__debug__"

.field private static final DEBUG_MESSAGES_KEY:Ljava/lang/String; = "messages"

.field private static final DEBUG_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final DEBUG_MESSAGE_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DEBUG_MESSAGE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final DEBUG_SEVERITY_INFO:Ljava/lang/String; = "info"

.field private static final DEBUG_SEVERITY_WARNING:Ljava/lang/String; = "warning"

.field public static final FIELDS_PARAM:Ljava/lang/String; = "fields"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String; = "GraphRequest"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private accessToken:Lcom/umeng/facebook/AccessToken;

.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/umeng/facebook/GraphRequest$Callback;

.field private graphObject:Lorg/json/JSONObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/umeng/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private skipClientToken:Z

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;Ljava/lang/String;)V
    .locals 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/umeng/facebook/GraphRequest;->skipClientToken:Z

    .line 245
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 246
    iput-object p2, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 247
    iput-object p6, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p5}, Lcom/umeng/facebook/GraphRequest;->setCallback(Lcom/umeng/facebook/GraphRequest$Callback;)V

    .line 250
    invoke-virtual {p0, p4}, Lcom/umeng/facebook/GraphRequest;->setHttpMethod(Lcom/umeng/facebook/HttpMethod;)V

    if-eqz p3, :cond_0

    .line 253
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 259
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addCommonParameters()V
    .locals 3

    .line 1425
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1427
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1431
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/facebook/GraphRequest;->skipClientToken:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1432
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getClientToken()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1436
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1438
    :cond_1
    sget-object v0, Lcom/umeng/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1446
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1447
    :cond_3
    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1448
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1453
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1455
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1456
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1457
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 1463
    :cond_0
    invoke-static {v2}, Lcom/umeng/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1464
    invoke-static {v2}, Lcom/umeng/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1466
    :cond_1
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    sget-object v3, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 1467
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1471
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Unsupported parameter type for GET request: %s"

    .line 1468
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1479
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "User-Agent"

    .line 1416
    invoke-static {}, Lcom/umeng/facebook/GraphRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    .line 1417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1419
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method public static executeAndWait(Lcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphResponse;
    .locals 3

    const/4 v0, 0x1

    .line 1096
    new-array v1, v0, [Lcom/umeng/facebook/GraphRequest;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/umeng/facebook/GraphRequest;->executeBatchAndWait([Lcom/umeng/facebook/GraphRequest;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1098
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1102
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/GraphResponse;

    return-object p0

    .line 1099
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string v0, "invalid state: expected a single response"

    invoke-direct {p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeBatchAndWait(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1156
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1161
    :try_start_0
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->toHttpConnection(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1171
    :try_start_1
    invoke-static {v1, p0}, Lcom/umeng/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1164
    :try_start_2
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/umeng/facebook/FacebookException;

    invoke-direct {v3, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1163
    invoke-static {v2, v0, v3}, Lcom/umeng/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/umeng/facebook/FacebookException;)Ljava/util/List;

    move-result-object v1

    .line 1167
    invoke-static {p0, v1}, Lcom/umeng/facebook/GraphRequest;->runCallbacks(Lcom/umeng/facebook/GraphRequestBatch;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1175
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    return-object v1

    :goto_0
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw p0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1137
    new-instance v0, Lcom/umeng/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAndWait(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAndWait([Lcom/umeng/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/umeng/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1119
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static executeBatchAsync(Lcom/umeng/facebook/GraphRequestBatch;)Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "requests"

    .line 1230
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1232
    new-instance v0, Lcom/umeng/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/GraphRequestAsyncTask;-><init>(Lcom/umeng/facebook/GraphRequestBatch;)V

    .line 1233
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/umeng/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;)",
            "Lcom/umeng/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .line 1211
    new-instance v0, Lcom/umeng/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAsync(Lcom/umeng/facebook/GraphRequestBatch;)Lcom/umeng/facebook/GraphRequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAsync([Lcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    .line 1192
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAsync(Ljava/util/Collection;)Lcom/umeng/facebook/GraphRequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 4
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

    .line 1274
    invoke-static {p0, p1}, Lcom/umeng/facebook/GraphResponse;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1276
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1278
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphRequestBatch;->size()I

    move-result p0

    .line 1279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 1287
    invoke-static {p1, v0}, Lcom/umeng/facebook/GraphRequest;->runCallbacks(Lcom/umeng/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 1290
    invoke-static {}, Lcom/umeng/facebook/AccessTokenManager;->getInstance()Lcom/umeng/facebook/AccessTokenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    return-object v0

    .line 1280
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 1284
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Received %d responses while expecting %d"

    .line 1281
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getBatchAppId(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/lang/String;
    .locals 1

    .line 2018
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2022
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/GraphRequest;

    .line 2023
    iget-object v0, v0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 2025
    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2031
    :cond_2
    sget-object p0, Lcom/umeng/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2032
    sget-object p0, Lcom/umeng/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object p0

    .line 2034
    :cond_3
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 4

    .line 1516
    sget-object v0, Lcom/umeng/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 1520
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    .line 1993
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 2000
    sget-object v0, Lcom/umeng/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s.%s"

    const/4 v1, 0x2

    .line 2001
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FBAndroidSDK"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "4.18.0"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 2004
    invoke-static {}, Lcom/umeng/facebook/internal/InternalSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 2005
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2006
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/umeng/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    aput-object v6, v1, v4

    aput-object v0, v1, v5

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 2014
    :cond_0
    sget-object v0, Lcom/umeng/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/umeng/facebook/GraphRequestBatch;)Z
    .locals 3

    .line 1609
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/GraphRequestBatch$Callback;

    .line 1610
    instance-of v1, v1, Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v1, :cond_0

    return v2

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/GraphRequest;

    .line 1616
    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequest;->getCallback()Lcom/umeng/facebook/GraphRequest$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isGzipCompressible(Lcom/umeng/facebook/GraphRequestBatch;)Z
    .locals 4

    .line 1636
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/GraphRequest;

    .line 1637
    iget-object v1, v0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1638
    iget-object v3, v0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1639
    invoke-static {v2}, Lcom/umeng/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .locals 3

    .line 1783
    sget-object v0, Lcom/umeng/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1784
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1786
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "me/"

    .line 1788
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/me/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    .line 2038
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    .line 2046
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static newGraphPathRequest(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Lcom/umeng/facebook/GraphRequest$Callback;)Lcom/umeng/facebook/GraphRequest;
    .locals 7

    .line 373
    new-instance v6, Lcom/umeng/facebook/GraphRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2051
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2052
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2053
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2055
    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 2056
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2058
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2060
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2054
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1806
    invoke-static {p1}, Lcom/umeng/facebook/GraphRequest;->isMeRequest(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ":"

    .line 1807
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "?"

    .line 1808
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1813
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1814
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1815
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1816
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string v5, "image"

    .line 1817
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1818
    :goto_2
    invoke-static {v3, v4, p2, v5}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1890
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1891
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 1895
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1896
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "%s[%s]"

    .line 1898
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1901
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1899
    invoke-static {v5, v1, p2, p3}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "id"

    .line 1908
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 1911
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1909
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto/16 :goto_3

    :cond_1
    const-string v0, "url"

    .line 1914
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "url"

    .line 1917
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1915
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "fbsdk:create_object"

    .line 1920
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1921
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_3

    .line 1924
    :cond_3
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1925
    check-cast p1, Lorg/json/JSONArray;

    .line 1926
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 1928
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s[%d]"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1929
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    invoke-static {v5, v6, p2, p3}, Lcom/umeng/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1931
    :cond_4
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_6

    const-class p3, Ljava/lang/Number;

    .line 1932
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_6

    const-class p3, Ljava/lang/Boolean;

    .line 1933
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    .line 1935
    :cond_5
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1936
    check-cast p1, Ljava/util/Date;

    .line 1943
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1946
    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1934
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :catch_0
    move-exception p0

    .line 1929
    throw p0
.end method

.method private static processRequest(Lcom/umeng/facebook/GraphRequestBatch;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1743
    new-instance v0, Lcom/umeng/facebook/GraphRequest$Serializer;

    invoke-direct {v0, p3, p4}, Lcom/umeng/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Z)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    const/4 p1, 0x0

    .line 1746
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/GraphRequestBatch;->get(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object p0

    .line 1748
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1749
    iget-object p3, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1750
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1751
    invoke-static {v1}, Lcom/umeng/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1752
    new-instance v2, Lcom/umeng/facebook/GraphRequest$Attachment;

    invoke-direct {v2, p0, v1}, Lcom/umeng/facebook/GraphRequest$Attachment;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p1, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1757
    :cond_1
    iget-object p3, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-static {p3, v0, p0}, Lcom/umeng/facebook/GraphRequest;->serializeParameters(Landroid/os/Bundle;Lcom/umeng/facebook/GraphRequest$Serializer;Lcom/umeng/facebook/GraphRequest;)V

    .line 1759
    invoke-static {p1, v0}, Lcom/umeng/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/umeng/facebook/GraphRequest$Serializer;)V

    .line 1761
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 1762
    iget-object p0, p0, Lcom/umeng/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/umeng/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;)V

    goto :goto_1

    .line 1765
    :cond_2
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->getBatchAppId(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object p1

    .line 1766
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "batch_app_id"

    .line 1771
    invoke-virtual {v0, p2, p1}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1776
    invoke-static {v0, p0, p1}, Lcom/umeng/facebook/GraphRequest;->serializeRequestsAsJSON(Lcom/umeng/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1778
    invoke-static {p1, v0}, Lcom/umeng/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/umeng/facebook/GraphRequest$Serializer;)V

    :cond_3
    :goto_1
    return-void

    .line 1767
    :cond_4
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "App ID was not specified at the request or Settings."

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static runCallbacks(Lcom/umeng/facebook/GraphRequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/GraphRequestBatch;",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1376
    invoke-virtual {p0, v2}, Lcom/umeng/facebook/GraphRequestBatch;->get(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object v3

    .line 1377
    iget-object v4, v3, Lcom/umeng/facebook/GraphRequest;->callback:Lcom/umeng/facebook/GraphRequest$Callback;

    if-eqz v4, :cond_0

    .line 1378
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/umeng/facebook/GraphRequest;->callback:Lcom/umeng/facebook/GraphRequest$Callback;

    .line 1379
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1378
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1384
    new-instance p1, Lcom/umeng/facebook/GraphRequest$2;

    invoke-direct {p1, v1, p0}, Lcom/umeng/facebook/GraphRequest$2;-><init>(Ljava/util/ArrayList;Lcom/umeng/facebook/GraphRequestBatch;)V

    .line 1397
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1400
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1403
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/umeng/facebook/GraphRequest$Serializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/umeng/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1969
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1971
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1972
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/GraphRequest$Attachment;

    .line 1973
    invoke-virtual {v2}, Lcom/umeng/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1974
    invoke-virtual {v2}, Lcom/umeng/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/umeng/facebook/GraphRequest$Attachment;->getRequest()Lcom/umeng/facebook/GraphRequest;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/umeng/facebook/GraphRequest$Serializer;Lcom/umeng/facebook/GraphRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1955
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1957
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1958
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1959
    invoke-static {v2}, Lcom/umeng/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1960
    invoke-virtual {p1, v1, v2, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/umeng/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1984
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1985
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/GraphRequest;

    .line 1986
    invoke-direct {v2, v0, p2}, Lcom/umeng/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p2, "batch"

    .line 1989
    invoke-virtual {p0, p2, v0, p1}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1548
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 1549
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "omit_response_on_success"

    .line 1550
    iget-boolean v2, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1554
    :cond_0
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "depends_on"

    .line 1555
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1558
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest;->getRelativeUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_url"

    .line 1559
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "method"

    .line 1560
    iget-object v3, p0, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1561
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-eqz v2, :cond_2

    .line 1562
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    .line 1567
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    iget-object v3, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1569
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1570
    iget-object v5, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1571
    invoke-static {v4}, Lcom/umeng/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1573
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1577
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1573
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1578
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v6, Lcom/umeng/facebook/GraphRequest$Attachment;

    invoke-direct {v6, p0, v4}, Lcom/umeng/facebook/GraphRequest$Attachment;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1583
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ","

    .line 1584
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attached_files"

    .line 1585
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1588
    :cond_5
    iget-object p2, p0, Lcom/umeng/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz p2, :cond_6

    .line 1590
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    new-instance v3, Lcom/umeng/facebook/GraphRequest$3;

    invoke-direct {v3, p0, p2}, Lcom/umeng/facebook/GraphRequest$3;-><init>(Lcom/umeng/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v2, v1, v3}, Lcom/umeng/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;)V

    const-string v1, "&"

    .line 1601
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "body"

    .line 1602
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1605
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method static final serializeToUrlConnection(Lcom/umeng/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1684
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->isGzipCompressible(Lcom/umeng/facebook/GraphRequestBatch;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1687
    invoke-virtual {p0, v2}, Lcom/umeng/facebook/GraphRequestBatch;->get(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    .line 1688
    :goto_0
    invoke-virtual {v4}, Lcom/umeng/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1689
    invoke-static {p1, v1}, Lcom/umeng/facebook/GraphRequest;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1691
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    .line 1699
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1700
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1704
    sget-object v6, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    if-ne v4, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    return-void

    .line 1710
    :cond_2
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 1714
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    .line 1716
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto :goto_3

    :cond_3
    move-object p1, v3

    .line 1719
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->hasOnProgressCallbacks(Lcom/umeng/facebook/GraphRequestBatch;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1721
    new-instance v2, Lcom/umeng/facebook/ProgressNoopOutputStream;

    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1722
    invoke-static {p0, v0, v5, v2, v1}, Lcom/umeng/facebook/GraphRequest;->processRequest(Lcom/umeng/facebook/GraphRequestBatch;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1724
    invoke-virtual {v2}, Lcom/umeng/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v3

    .line 1725
    invoke-virtual {v2}, Lcom/umeng/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v9

    .line 1727
    new-instance v2, Lcom/umeng/facebook/ProgressOutputStream;

    int-to-long v10, v3

    move-object v6, v2

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/umeng/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/umeng/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_4
    move-object v2, p1

    .line 1730
    :goto_2
    :try_start_3
    invoke-static {p0, v0, v5, v2, v1}, Lcom/umeng/facebook/GraphRequest;->processRequest(Lcom/umeng/facebook/GraphRequestBatch;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1733
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw p0
.end method

.method private static setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 1628
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string v0, "gzip"

    .line 1629
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Content-Type"

    .line 1631
    invoke-static {}, Lcom/umeng/facebook/GraphRequest;->getMimeContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static final shouldWarnOnMissingFieldsParam(Lcom/umeng/facebook/GraphRequest;)Z
    .locals 4

    .line 1648
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest;->getVersion()Ljava/lang/String;

    move-result-object p0

    .line 1649
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "v"

    .line 1653
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "\\."

    .line 1656
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1658
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    aget-object v0, p0, v2

    .line 1659
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v3, :cond_4

    :cond_2
    aget-object v0, p0, v2

    .line 1660
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v3, :cond_3

    aget-object p0, p0, v1

    .line 1661
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static toHttpConnection(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1048
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->validateFieldsParamForGetRequests(Lcom/umeng/facebook/GraphRequestBatch;)V

    .line 1052
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/GraphRequestBatch;->get(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object v0

    .line 1057
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const/4 v0, 0x0

    .line 1069
    :try_start_1
    invoke-static {v1}, Lcom/umeng/facebook/GraphRequest;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1071
    :try_start_2
    invoke-static {p0, v1}, Lcom/umeng/facebook/GraphRequest;->serializeToUrlConnection(Lcom/umeng/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p0

    .line 1077
    :goto_1
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1079
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "could not construct request body"

    invoke-direct {v0, v1, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 1073
    :goto_2
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1075
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "could not construct request body"

    invoke-direct {v0, v1, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    .line 1064
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final validateFieldsParamForGetRequests(Lcom/umeng/facebook/GraphRequestBatch;)V
    .locals 3

    .line 1666
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/GraphRequest;

    .line 1667
    sget-object v1, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequest;->getHttpMethod()Lcom/umeng/facebook/HttpMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/facebook/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    invoke-static {v0}, Lcom/umeng/facebook/GraphRequest;->shouldWarnOnMissingFieldsParam(Lcom/umeng/facebook/GraphRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1669
    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fields"

    .line 1670
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fields"

    .line 1671
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/umeng/facebook/GraphResponse;
    .locals 1

    .line 986
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->executeAndWait(Lcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 2

    const/4 v0, 0x1

    .line 1001
    new-array v0, v0, [Lcom/umeng/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAsync([Lcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/umeng/facebook/AccessToken;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    return-object v0
.end method

.method public final getCallback()Lcom/umeng/facebook/GraphRequest$Callback;
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->callback:Lcom/umeng/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/umeng/facebook/HttpMethod;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method final getRelativeUrlForBatchedRequest()Ljava/lang/String;
    .locals 6

    .line 1483
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 1487
    new-array v2, v1, [Ljava/lang/Object;

    .line 1488
    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest;->addCommonParameters()V

    .line 1490
    invoke-direct {p0, v0}, Lcom/umeng/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "%s?%s"

    .line 1492
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1484
    :cond_0
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 4

    .line 1497
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1502
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest;->getHttpMethod()Lcom/umeng/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    const-string v1, "/videos"

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1507
    :cond_1
    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    .line 1509
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest;->addCommonParameters()V

    .line 1512
    invoke-direct {p0, v0}, Lcom/umeng/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Lcom/umeng/facebook/AccessToken;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    return-void
.end method

.method public final setCallback(Lcom/umeng/facebook/GraphRequest$Callback;)V
    .locals 1

    .line 907
    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    .line 908
    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->callback:Lcom/umeng/facebook/GraphRequest$Callback;

    goto :goto_1

    .line 909
    :cond_1
    :goto_0
    new-instance v0, Lcom/umeng/facebook/GraphRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/facebook/GraphRequest$1;-><init>(Lcom/umeng/facebook/GraphRequest;Lcom/umeng/facebook/GraphRequest$Callback;)V

    .line 946
    iput-object v0, p0, Lcom/umeng/facebook/GraphRequest;->callback:Lcom/umeng/facebook/GraphRequest$Callback;

    :goto_1
    return-void
.end method

.method public final setHttpMethod(Lcom/umeng/facebook/HttpMethod;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 730
    :cond_2
    sget-object p1, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    :goto_1
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public final setSkipClientToken(Z)V
    .locals 0

    .line 757
    iput-boolean p1, p0, Lcom/umeng/facebook/GraphRequest;->skipClientToken:Z

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    .line 1354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accessToken: "

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 1356
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    .line 1357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    .line 1359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->httpMethod:Lcom/umeng/facebook/HttpMethod;

    .line 1362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 1364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
