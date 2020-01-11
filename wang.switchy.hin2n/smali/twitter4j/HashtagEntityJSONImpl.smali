.class Ltwitter4j/HashtagEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;
.implements Ltwitter4j/SymbolEntity;


# static fields
.field private static final serialVersionUID:J = -0x49ccb94b06a4978aL


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    .line 38
    invoke-virtual {p0, p2}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    .line 39
    iput-object p3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "indices"

    .line 49
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    const-string v0, "text"

    .line 53
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text"

    .line 54
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

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

    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Ltwitter4j/HashtagEntityJSONImpl;

    .line 83
    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 73
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 68
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashtagEntityJSONImpl{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
