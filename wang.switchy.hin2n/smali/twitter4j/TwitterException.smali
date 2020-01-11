.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/HttpResponseCode;


# static fields
.field private static final FILTER:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x535b982b220f22b8L


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

.field private nested:Z

.field private response:Ltwitter4j/HttpResponse;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 165
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "twitter4j"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    instance-of v0, p1, Ltwitter4j/TwitterException;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Ltwitter4j/TwitterException;

    invoke-virtual {p1}, Ltwitter4j/TwitterException;->setNested()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    .line 31
    iput p2, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 32
    iput p2, p0, Ltwitter4j/TwitterException;->errorCode:I

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 35
    iput-object p2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    const/4 p2, 0x0

    .line 188
    iput-boolean p2, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 39
    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    .line 57
    invoke-virtual {p2}, Ltwitter4j/HttpResponse;->getStatusCode()I

    move-result p1

    iput p1, p0, Ltwitter4j/TwitterException;->statusCode:I

    return-void
.end method

.method private decode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "{"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errors"

    .line 87
    invoke-virtual {v0, p1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "errors"

    .line 88
    invoke-virtual {v0, p1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object p1

    const-string v0, "message"

    .line 89
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    const-string v0, "code"

    .line 90
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/TwitterException;->errorCode:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static getCause(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const-string v0, ""

    goto :goto_0

    :sswitch_0
    const-string v0, "The Twitter servers are up, but the request couldn\'t be serviced due to some failure within our stack. Try again later."

    goto :goto_0

    :sswitch_1
    const-string v0, "The Twitter servers are up, but overloaded with requests. Try again later."

    goto :goto_0

    :sswitch_2
    const-string v0, "Twitter is down or being upgraded."

    goto :goto_0

    :sswitch_3
    const-string v0, "Something is broken. Please post to the group (https://dev.twitter.com/docs/support) so the Twitter team can investigate."

    goto :goto_0

    :sswitch_4
    const-string v0, "Returned in API v1.1 when a request cannot be served due to the application\'s rate limit having been exhausted for the resource. See Rate Limiting in API v1.1.(https://dev.twitter.com/docs/rate-limiting/1.1)"

    goto :goto_0

    :sswitch_5
    const-string v0, "Returned when an image uploaded to POST account/update_profile_banner(https://dev.twitter.com/docs/api/1/post/account/update_profile_banner) is unable to be processed."

    goto :goto_0

    :sswitch_6
    const-string v0, "Returned by the Search and Trends API when you are being rate limited (https://dev.twitter.com/docs/rate-limiting).\nReturned by the Streaming API:\n Too many login attempts in a short period of time.\n Running too many copies of the same application authenticating with the same account name."

    goto :goto_0

    :sswitch_7
    const-string v0, "Returned by the Search API when an invalid format is specified in the request.\nReturned by the Streaming API when one or more of the parameters are not suitable for the resource. The track parameter, for example, would throw this error if:\n The track keyword is too long or too short.\n The bounding box specified is invalid.\n No predicates defined for filtered resource, for example, neither track nor follow parameter defined.\n Follow userid cannot be read."

    goto :goto_0

    :sswitch_8
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exists. Also returned when the requested format is not supported by the requested method."

    goto :goto_0

    :sswitch_9
    const-string v0, "The request is understood, but it has been refused. An accompanying error message will explain why. This code is used when requests are being denied due to update limits (https://support.twitter.com/articles/15364-about-twitter-limits-update-api-dm-and-following)."

    goto :goto_0

    :sswitch_a
    const-string v0, "Authentication credentials (https://dev.twitter.com/pages/auth) were missing or incorrect. Ensure that you have set valid consumer key/secret, access token/secret, and the system clock is in sync."

    goto :goto_0

    :sswitch_b
    const-string v0, "The request was invalid. An accompanying error message will explain why. This is the status code will be returned during version 1.0 rate limiting(https://dev.twitter.com/pages/rate-limiting). In API v1.1, a request without authentication is considered invalid and you will get this response."

    goto :goto_0

    :sswitch_c
    const-string v0, "There was no new data to return."

    .line 295
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_c
        0x190 -> :sswitch_b
        0x191 -> :sswitch_a
        0x193 -> :sswitch_9
        0x194 -> :sswitch_8
        0x196 -> :sswitch_7
        0x1a4 -> :sswitch_6
        0x1a6 -> :sswitch_5
        0x1ad -> :sswitch_4
        0x1f4 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x1f8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;
    .locals 2

    .line 182
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ltwitter4j/ExceptionDiagnosis;

    sget-object v1, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 185
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 203
    :cond_1
    check-cast p1, Ltwitter4j/TwitterException;

    .line 205
    iget v2, p0, Ltwitter4j/TwitterException;->errorCode:I

    iget v3, p1, Ltwitter4j/TwitterException;->errorCode:I

    if-eq v2, v3, :cond_2

    return v1

    .line 206
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/TwitterException;->nested:Z

    iget-boolean v3, p1, Ltwitter4j/TwitterException;->nested:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 207
    :cond_3
    iget v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    iget v3, p1, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v2, v3, :cond_4

    return v1

    .line 208
    :cond_4
    iget-object v2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 209
    :cond_6
    iget-object v2, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    iget-object v3, p1, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v2, v3}, Ltwitter4j/ExceptionDiagnosis;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 211
    :cond_8
    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    iget-object p1, p1, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_9
    iget-object p1, p1, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    if-eqz p1, :cond_a

    :goto_2
    return v1

    :cond_a
    return v0

    :cond_b
    :goto_3
    return v1
.end method

.method public exceededRateLimitation()Z
    .locals 2

    .line 159
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1a4

    if-eq v0, v1, :cond_2

    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAccessLevel()I
    .locals 1

    .line 115
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    invoke-static {v0}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result v0

    return v0
.end method

.method public getExceptionCode()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    if-eq v1, v2, :cond_0

    const-string v1, "message - "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code - "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v1, v2, :cond_1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-static {v2}, Ltwitter4j/TwitterException;->getCause(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .line 107
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    invoke-static {v0}, Ltwitter4j/JSONImplFactory;->createRateLimitStatusFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRetryAfter()I
    .locals 3

    .line 133
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/4 v1, -0x1

    const/16 v2, 0x190

    if-ne v0, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Ltwitter4j/RateLimitStatus;->getSecondsUntilReset()I

    move-result v1

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v2, 0x1a4

    if-ne v0, v2, :cond_1

    .line 140
    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    const-string v2, "Retry-After"

    invoke-virtual {v0, v2}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public getStatusCode()I
    .locals 1

    .line 98
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 218
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v1}, Ltwitter4j/ExceptionDiagnosis;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-boolean v1, p0, Ltwitter4j/TwitterException;->nested:Z

    add-int/2addr v0, v1

    return v0
.end method

.method setNested()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nRelevant discussions can be found on the Internet at:\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getStackLineHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getLineNumberHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nTwitterException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceptionCode=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getExceptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRetryAfter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
