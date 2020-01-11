.class public Ltwitter4j/MediaEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/MediaEntityJSONImpl$Size;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x32182bdefb3fb272L


# instance fields
.field protected displayURL:Ljava/lang/String;

.field protected expandedURL:Ljava/lang/String;

.field protected id:J

.field protected mediaURL:Ljava/lang/String;

.field protected mediaURLHttps:Ljava/lang/String;

.field protected sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    :try_start_0
    const-string v0, "indices"

    .line 39
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ltwitter4j/MediaEntityJSONImpl;->setStart(I)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/MediaEntityJSONImpl;->setEnd(I)V

    const-string v0, "id"

    .line 42
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    const-string v0, "url"

    .line 44
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    const-string v0, "expanded_url"

    .line 45
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    const-string v0, "media_url"

    .line 46
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    const-string v0, "media_url_https"

    .line 47
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    const-string v0, "display_url"

    .line 48
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    const-string v0, "sizes"

    .line 50
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    .line 53
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v2, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    const-string v3, "large"

    invoke-direct {p0, v1, v0, v2, v3}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v2, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    const-string v3, "medium"

    invoke-direct {p0, v1, v0, v2, v3}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v2, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    const-string v3, "small"

    invoke-direct {p0, v1, v0, v2, v3}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v2, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    const-string v3, "thumb"

    invoke-direct {p0, v1, v0, v2, v3}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    const-string v0, "type"

    .line 57
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "type"

    .line 58
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;",
            "Ltwitter4j/JSONObject;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 67
    invoke-virtual {p2, p4}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ltwitter4j/MediaEntityJSONImpl$Size;

    invoke-virtual {p2, p4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p2

    invoke-direct {v0, p2}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ltwitter4j/EntityIndex;)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Ltwitter4j/EntityIndex;->compareTo(Ltwitter4j/EntityIndex;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 199
    :cond_0
    instance-of v1, p1, Ltwitter4j/MediaEntityJSONImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 201
    :cond_1
    check-cast p1, Ltwitter4j/MediaEntityJSONImpl;

    .line 203
    iget-wide v3, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    iget-wide v5, p1, Ltwitter4j/MediaEntityJSONImpl;->id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 129
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getExpandedURL()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    return-wide v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaURLHttps()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    return-object v0
.end method

.method public getSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 124
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 210
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    iget-wide v2, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaEntityJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaURLHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
