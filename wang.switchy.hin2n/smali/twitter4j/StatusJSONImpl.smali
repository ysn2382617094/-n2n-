.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x59aac71ba3de09f1L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

.field private favoriteCount:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private lang:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private quotedStatus:Ltwitter4j/Status;

.field private quotedStatusId:J

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private scopes:Ltwitter4j/Scopes;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private withheldInCountries:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 46
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 63
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 64
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 46
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 63
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 64
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 70
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 72
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 74
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 46
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 63
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 64
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 88
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 46
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 63
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 64
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 80
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 81
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static createStatusList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 411
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    .line 416
    new-instance v2, Ltwitter4j/ResponseListImpl;

    invoke-direct {v2, v1, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_2

    .line 418
    invoke-virtual {v0, p0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 419
    new-instance v4, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v4, v3}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 420
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    invoke-static {v4, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_1
    invoke-interface {v2, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 425
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 426
    invoke-static {v2, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 430
    new-instance p1, Ltwitter4j/TwitterException;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const-string v0, "id"

    .line 97
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    const-string v0, "source"

    .line 98
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    const-string v0, "created_at"

    .line 99
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    const-string v0, "truncated"

    .line 100
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    const-string v0, "in_reply_to_status_id"

    .line 101
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    const-string v0, "in_reply_to_user_id"

    .line 102
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    const-string v0, "favorited"

    .line 103
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    const-string v0, "retweeted"

    .line 104
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    const-string v0, "in_reply_to_screen_name"

    .line 105
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    const-string v0, "retweet_count"

    .line 106
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    const-string v0, "favorite_count"

    .line 107
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    const-string v0, "possibly_sensitive"

    .line 108
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    :try_start_0
    const-string v0, "user"

    .line 110
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ltwitter4j/UserJSONImpl;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 113
    :cond_0
    invoke-static {p1}, Ltwitter4j/JSONImplFactory;->createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    const-string v0, "place"

    .line 114
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    const-string v1, "place"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    :cond_1
    const-string v0, "retweeted_status"

    .line 118
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    const-string v1, "retweeted_status"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    :cond_2
    const-string v0, "contributors"

    .line 121
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "contributors"

    .line 122
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    const/4 v2, 0x0

    .line 124
    :goto_0
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 125
    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_3
    new-array v0, v1, [J

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    :cond_4
    const-string v0, "entities"

    .line 130
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "entities"

    .line 131
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    const-string v2, "user_mentions"

    .line 133
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "user_mentions"

    .line 134
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 136
    new-array v4, v3, [Ltwitter4j/UserMentionEntity;

    iput-object v4, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    .line 138
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v6, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "urls"

    .line 141
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "urls"

    .line 142
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 144
    new-array v4, v3, [Ltwitter4j/URLEntity;

    iput-object v4, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 146
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v6, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string v2, "hashtags"

    .line 150
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "hashtags"

    .line 151
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 153
    new-array v4, v3, [Ltwitter4j/HashtagEntity;

    iput-object v4, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 155
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v6, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string v2, "symbols"

    .line 159
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "symbols"

    .line 160
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 162
    new-array v4, v3, [Ltwitter4j/SymbolEntity;

    iput-object v4, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_8

    .line 165
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    new-instance v6, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const-string v2, "media"

    .line 169
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "media"

    .line 170
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 172
    new-array v3, v2, [Ltwitter4j/MediaEntity;

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    .line 174
    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    const-string v0, "extended_entities"

    .line 178
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "extended_entities"

    .line 179
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    const-string v2, "media"

    .line 180
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "media"

    .line 181
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 183
    new-array v3, v2, [Ltwitter4j/ExtendedMediaEntity;

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_a

    .line 185
    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    new-instance v5, Ltwitter4j/ExtendedMediaEntityJSONImpl;

    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/ExtendedMediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    const-string v0, "quoted_status"

    .line 189
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    const-string v2, "quoted_status"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    :cond_b
    const-string v0, "quoted_status_id"

    .line 192
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "quoted_status_id"

    .line 193
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 196
    :cond_c
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_d

    new-array v0, v1, [Ltwitter4j/UserMentionEntity;

    goto :goto_7

    :cond_d
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    :goto_7
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 197
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_e

    new-array v0, v1, [Ltwitter4j/URLEntity;

    goto :goto_8

    :cond_e
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    :goto_8
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 198
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_f

    new-array v0, v1, [Ltwitter4j/HashtagEntity;

    goto :goto_9

    :cond_f
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    :goto_9
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 199
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v0, :cond_10

    new-array v0, v1, [Ltwitter4j/SymbolEntity;

    goto :goto_a

    :cond_10
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    :goto_a
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 200
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v0, :cond_11

    new-array v0, v1, [Ltwitter4j/MediaEntity;

    goto :goto_b

    :cond_11
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    :goto_b
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 201
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    if-nez v0, :cond_12

    new-array v0, v1, [Ltwitter4j/ExtendedMediaEntity;

    goto :goto_c

    :cond_12
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    :goto_c
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    const-string v0, "text"

    .line 202
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v0, v2, v3, v4, v5}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    const-string v0, "current_user_retweet"

    .line 204
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "current_user_retweet"

    .line 205
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    :cond_13
    const-string v0, "lang"

    .line 207
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "lang"

    .line 208
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    :cond_14
    const-string v0, "scopes"

    .line 211
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "scopes"

    .line 212
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    const-string v2, "place_ids"

    .line 213
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "place_ids"

    .line 214
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 216
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_15

    .line 218
    invoke-virtual {v0, v4}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 220
    :cond_15
    new-instance v0, Ltwitter4j/ScopesImpl;

    invoke-direct {v0, v3}, Ltwitter4j/ScopesImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    :cond_16
    const-string v0, "withheld_in_countries"

    .line 223
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "withheld_in_countries"

    .line 224
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 226
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    :goto_e
    if-ge v1, v0, :cond_17

    .line 228
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    return-void

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Ltwitter4j/Status;

    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 4

    .line 238
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 447
    :cond_1
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getContributors()[J
    .locals 1

    .line 300
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 249
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentUserRetweetId()J
    .locals 2

    .line 345
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0
.end method

.method public getExtendedMediaEntities()[Ltwitter4j/ExtendedMediaEntity;
    .locals 1

    .line 375
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 1

    .line 315
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    return v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .line 290
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .line 365
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 254
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .line 275
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .line 280
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .line 370
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .line 295
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getQuotedStatus()Ltwitter4j/Status;
    .locals 1

    .line 400
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getQuotedStatusId()J
    .locals 2

    .line 395
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    return-wide v0
.end method

.method public getRetweetCount()I
    .locals 2

    .line 335
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .line 330
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getScopes()Ltwitter4j/Scopes;
    .locals 1

    .line 385
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .line 380
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .line 360
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .line 320
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .line 355
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public getWithheldInCountries()[Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 436
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .line 325
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRetweeted()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    return v0
.end method

.method public isRetweetedByMe()Z
    .locals 5

    .line 340
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isTruncated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", inReplyToUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isFavorited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRetweeted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", favoriteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", geoLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", place="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retweetCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isPossiblySensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", contributorsIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 469
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userMentionEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 471
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 472
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashtagEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 473
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 474
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", symbolEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 475
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentUserRetweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", withHeldInCountries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 478
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quotedStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", quotedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
