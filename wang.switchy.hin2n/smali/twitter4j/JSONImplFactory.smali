.class Ltwitter4j/JSONImplFactory;
.super Ljava/lang/Object;
.source "JSONImplFactory.java"

# interfaces
.implements Ltwitter4j/ObjectFactory;


# static fields
.field private static final serialVersionUID:J = -0x19b91a22483a58afL


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    return-void
.end method

.method static coordinatesAsGeoLocationArray(Ltwitter4j/JSONArray;)[[Ltwitter4j/GeoLocation;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [[Ltwitter4j/GeoLocation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 77
    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONArray(I)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ltwitter4j/GeoLocation;

    aput-object v4, v0, v2

    const/4 v4, 0x0

    .line 79
    :goto_1
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 80
    invoke-virtual {v3, v4}, Ltwitter4j/JSONArray;->getJSONArray(I)Ltwitter4j/JSONArray;

    move-result-object v5

    .line 81
    aget-object v6, v0, v2

    new-instance v7, Ltwitter4j/GeoLocation;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ltwitter4j/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v5, v1}, Ltwitter4j/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v7, v6, v4
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 86
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "coordinates"

    .line 58
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "coordinates"

    .line 59
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p0

    const-string v0, "coordinates"

    .line 60
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v0, Ltwitter4j/GeoLocation;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x0

    aget-object p0, p0, v3

    .line 64
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ltwitter4j/GeoLocation;-><init>(DD)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static createRateLimitStatusFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 0

    .line 91
    invoke-static {p0}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createStatus(Ltwitter4j/HttpResponse;)Ltwitter4j/Status;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 43
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUser(Ltwitter4j/HttpResponse;)Ltwitter4j/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 98
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Ltwitter4j/JSONImplFactory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    check-cast p1, Ltwitter4j/JSONImplFactory;

    .line 139
    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object p1, p1, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz p1, :cond_3

    :goto_0
    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 147
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONImplFactory{conf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
