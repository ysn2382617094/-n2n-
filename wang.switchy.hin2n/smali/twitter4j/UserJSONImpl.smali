.class final Ltwitter4j/UserJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "UserJSONImpl.java"

# interfaces
.implements Ltwitter4j/User;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4b9c219cdec667f7L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private descriptionURLEntities:[Ltwitter4j/URLEntity;

.field private email:Ljava/lang/String;

.field private favouritesCount:I

.field private followersCount:I

.field private friendsCount:I

.field private id:J

.field private isContributorsEnabled:Z

.field private isDefaultProfile:Z

.field private isDefaultProfileImage:Z

.field private isFollowRequestSent:Z

.field private isGeoEnabled:Z

.field private isProtected:Z

.field private isVerified:Z

.field private lang:Ljava/lang/String;

.field private listedCount:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundImageUrlHttps:Ljava/lang/String;

.field private profileBackgroundTiled:Z

.field private profileBannerImageUrl:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private profileImageUrlHttps:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private profileUseBackgroundImage:Z

.field private screenName:Ljava/lang/String;

.field private showAllInlineMedia:Z

.field private status:Ltwitter4j/Status;

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private translator:Z

.field private url:Ljava/lang/String;

.field private urlEntity:Ltwitter4j/URLEntity;

.field private utcOffset:I

.field private withheldInCountries:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 78
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 81
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 83
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void
.end method

.method private static getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const-string v0, "entities"

    .line 181
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "entities"

    .line 182
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p0

    .line 183
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p0

    const-string p1, "urls"

    .line 185
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "urls"

    .line 186
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result p1

    .line 188
    new-array v0, p1, [Ltwitter4j/URLEntity;

    :goto_0
    if-ge v1, p1, :cond_0

    .line 190
    new-instance v2, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {p0, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 196
    :cond_1
    new-array p0, v1, [Ltwitter4j/URLEntity;

    return-object p0
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "id"

    .line 100
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    const-string v0, "name"

    .line 101
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    const-string v0, "email"

    .line 102
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->email:Ljava/lang/String;

    const-string v0, "screen_name"

    .line 103
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    const-string v0, "location"

    .line 104
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    const-string v0, "description"

    .line 107
    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    const-string v0, "url"

    .line 110
    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;

    move-result-object v0

    .line 111
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 112
    aget-object v0, v0, v2

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    :cond_0
    const-string v0, "description"

    .line 115
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v3}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    :cond_1
    const-string v0, "contributors_enabled"

    .line 121
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    const-string v0, "profile_image_url"

    .line 122
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v0, "profile_image_url_https"

    .line 123
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v0, "default_profile_image"

    .line 124
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfileImage:Z

    const-string v0, "url"

    .line 125
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    const-string v0, "protected"

    .line 126
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    const-string v0, "geo_enabled"

    .line 127
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    const-string v0, "verified"

    .line 128
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    const-string v0, "is_translator"

    .line 129
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    const-string v0, "followers_count"

    .line 130
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    const-string v0, "profile_background_color"

    .line 132
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    const-string v0, "profile_text_color"

    .line 133
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    const-string v0, "profile_link_color"

    .line 134
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    const-string v0, "profile_sidebar_fill_color"

    .line 135
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    const-string v0, "profile_sidebar_border_color"

    .line 136
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    const-string v0, "profile_use_background_image"

    .line 137
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    const-string v0, "default_profile"

    .line 138
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfile:Z

    const-string v0, "show_all_inline_media"

    .line 139
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    const-string v0, "friends_count"

    .line 140
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    const-string v0, "created_at"

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    .line 141
    invoke-static {v0, p1, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    const-string v0, "favourites_count"

    .line 142
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    const-string v0, "utc_offset"

    .line 143
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    const-string v0, "time_zone"

    .line 144
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    const-string v0, "profile_background_image_url"

    .line 145
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    const-string v0, "profile_background_image_url_https"

    .line 146
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    const-string v0, "profile_banner_url"

    .line 147
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    const-string v0, "profile_background_tile"

    .line 148
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    const-string v0, "lang"

    .line 149
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    const-string v0, "statuses_count"

    .line 150
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    const-string v0, "listed_count"

    .line 151
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    const-string v0, "follow_request_sent"

    .line 152
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    const-string v0, "status"

    .line 153
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "status"

    .line 154
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 155
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v1, v0}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    :cond_2
    const-string v0, "withheld_in_countries"

    .line 157
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "withheld_in_countries"

    .line 158
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    .line 160
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Ltwitter4j/UserJSONImpl;->withheldInCountries:[Ljava/lang/String;

    :goto_0
    if-ge v2, v1, :cond_3

    .line 162
    iget-object v3, p0, Ltwitter4j/UserJSONImpl;->withheldInCountries:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    const-string v0, "_"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/"

    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-le v1, v2, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Ltwitter4j/User;

    invoke-virtual {p0, p1}, Ltwitter4j/UserJSONImpl;->compareTo(Ltwitter4j/User;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ltwitter4j/User;)I
    .locals 4

    .line 201
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

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

    .line 506
    :cond_1
    instance-of v2, p1, Ltwitter4j/User;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/User;

    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/UserJSONImpl;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getBiggerProfileImageURL()Ljava/lang/String;
    .locals 2

    .line 246
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, "_bigger"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBiggerProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .line 280
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, "_bigger"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 372
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .line 472
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .line 377
    iget v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .line 313
    iget v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .line 361
    iget v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 206
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getListedCount()I
    .locals 1

    .line 462
    iget v0, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniProfileImageURL()Ljava/lang/String;
    .locals 2

    .line 251
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, "_mini"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiniProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .line 285
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, "_mini"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalProfileImageURL()Ljava/lang/String;
    .locals 2

    .line 256
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .line 290
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageURL()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageUrlHttps()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBannerIPadRetinaURL()Ljava/lang/String;
    .locals 2

    .line 417
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ipad_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileBannerIPadURL()Ljava/lang/String;
    .locals 2

    .line 412
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ipad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileBannerMobileRetinaURL()Ljava/lang/String;
    .locals 2

    .line 427
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mobile_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileBannerMobileURL()Ljava/lang/String;
    .locals 2

    .line 422
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileBannerRetinaURL()Ljava/lang/String;
    .locals 2

    .line 407
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/web_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileBannerURL()Ljava/lang/String;
    .locals 2

    .line 402
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/web"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProfileImageURL()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURLHttps()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileLinkColor()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarBorderColor()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarFillColor()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileTextColor()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ltwitter4j/Status;
    .locals 1

    .line 366
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .line 442
    iget v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntity()Ltwitter4j/URLEntity;
    .locals 7

    .line 477
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    goto :goto_0

    .line 479
    :goto_1
    new-instance v0, Ltwitter4j/URLEntityJSONImpl;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    move-object v1, v0

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Ltwitter4j/URLEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    .line 481
    :cond_1
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUtcOffset()I
    .locals 1

    .line 382
    iget v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    return v0
.end method

.method public getWithheldInCountries()[Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->withheldInCountries:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 495
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isContributorsEnabled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    return v0
.end method

.method public isDefaultProfile()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfile:Z

    return v0
.end method

.method public isDefaultProfileImage()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfileImage:Z

    return v0
.end method

.method public isFollowRequestSent()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    return v0
.end method

.method public isProfileBackgroundTiled()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    return v0
.end method

.method public isProfileUseBackgroundImage()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    return v0
.end method

.method public isShowAllInlineMedia()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    return v0
.end method

.method public isTranslator()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isContributorsEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", profileImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileImageUrlHttps=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDefaultProfileImage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfileImage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isProtected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", followersCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileTextColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileLinkColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileUseBackgroundImage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDefaultProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isDefaultProfile:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showAllInlineMedia="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", friendsCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", favouritesCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", utcOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeZone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileBackgroundImageUrlHttps=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", profileBackgroundTiled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGeoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", translator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFollowRequestSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", withheldInCountries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 549
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
