.class final Ltwitter4j/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "RateLimitStatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/RateLimitStatus;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c1cd6cd5a4eb3adL


# instance fields
.field private limit:I

.field private remaining:I

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(III)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 65
    iput p2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 66
    iput p3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long p1, p3

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void
.end method

.method static createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "X-Rate-Limit-Limit"

    .line 89
    invoke-virtual {p0, v1}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "X-Rate-Limit-Remaining"

    .line 95
    invoke-virtual {p0, v2}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "X-Rate-Limit-Reset"

    .line 101
    invoke-virtual {p0, v3}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 103
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p0, v3

    .line 108
    new-instance v0, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v0, v1, v2, p0}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(III)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    return-object v0

    :cond_3
    return-object v0
.end method

.method static createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "resources"

    .line 45
    invoke-virtual {p0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 50
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 53
    new-instance v6, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v6, v5}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 54
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    check-cast p1, Ltwitter4j/RateLimitStatusJSONImpl;

    .line 125
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    if-eq v2, v3, :cond_2

    return v1

    .line 126
    :cond_2
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    if-eq v2, v3, :cond_3

    return v1

    .line 127
    :cond_3
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v2, v3, :cond_4

    return v1

    .line 128
    :cond_4
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget p1, p1, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getSecondsUntilReset()I
    .locals 1

    .line 115
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 135
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int/2addr v0, v1

    return v0
.end method

.method init(Ltwitter4j/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const-string v0, "limit"

    .line 75
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    const-string v0, "remaining"

    .line 76
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    const-string v0, "reset"

    .line 77
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 78
    iget p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RateLimitStatusJSONImpl{remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
