.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x670093d787091b13L


# instance fields
.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private transient mediaBody:Ljava/io/InputStream;

.field private mediaFile:Ljava/io/File;

.field private mediaIds:[J

.field private mediaName:Ljava/lang/String;

.field private placeId:Ljava/lang/String;

.field private possiblySensitive:Z

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 35
    iput-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 44
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-void
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .line 219
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 210
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 6

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "status"

    .line 182
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 183
    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const-wide/16 v3, -0x1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    const-string v1, "in_reply_to_status_id"

    .line 184
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 186
    :cond_0
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v1, :cond_1

    const-string v1, "lat"

    .line 187
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    const-string v1, "long"

    .line 188
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    :cond_1
    const-string v1, "place_id"

    .line 191
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v1, :cond_2

    const-string v1, "display_coordinates"

    const-string v2, "false"

    .line 193
    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 195
    :cond_2
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 196
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "media[]"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "possibly_sensitive"

    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 199
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "media[]"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    iget-object v4, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "possibly_sensitive"

    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_4
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    if-eqz v1, :cond_5

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 202
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "media_ids"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v3}, Ltwitter4j/StringUtil;->join([J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0
.end method

.method public displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setDisplayCoordinates(Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 227
    :cond_1
    check-cast p1, Ltwitter4j/StatusUpdate;

    .line 229
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v3, p1, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 230
    :cond_2
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v4, p1, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 231
    :cond_3
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    iget-boolean v3, p1, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 232
    :cond_4
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2, v3}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 233
    :cond_6
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 234
    :cond_8
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_9
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_a

    :goto_2
    return v1

    .line 235
    :cond_a
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_b
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_3
    return v1

    .line 236
    :cond_c
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_d
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaIds:[J

    if-eqz v2, :cond_e

    :goto_4
    return v1

    .line 237
    :cond_e
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_f
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_10

    :goto_5
    return v1

    .line 238
    :cond_10
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_6

    :cond_11
    iget-object p1, p1, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz p1, :cond_12

    :goto_6
    return v1

    :cond_12
    return v0

    :cond_13
    :goto_7
    return v1
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .line 52
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .line 65
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 245
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 249
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 250
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 251
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 252
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 253
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 254
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    if-eqz v2, :cond_6

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v1}, Ltwitter4j/StringUtil;->join([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setInReplyToStatusId(J)V

    return-object p0
.end method

.method public isDisplayCoordinates()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0
.end method

.method isForUpdateWithMedia()Z
    .locals 1

    .line 140
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    return v0
.end method

.method public location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setLocation(Ltwitter4j/GeoLocation;)V

    return-object p0
.end method

.method public media(Ljava/io/File;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    return-object p0
.end method

.method public media(Ljava/lang/String;Ljava/io/InputStream;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p0
.end method

.method public placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPlaceId(Ljava/lang/String;)V

    return-object p0
.end method

.method public possiblySensitive(Z)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPossiblySensitive(Z)V

    return-object p0
.end method

.method public setDisplayCoordinates(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-void
.end method

.method public setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-void
.end method

.method public setMedia(Ljava/io/File;)V
    .locals 0

    .line 108
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    return-void
.end method

.method public setMedia(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    return-void
.end method

.method public varargs setMediaIds([J)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-void
.end method

.method public setPossiblySensitive(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusUpdate{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", location="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", placeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", possiblySensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mediaName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mediaBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
