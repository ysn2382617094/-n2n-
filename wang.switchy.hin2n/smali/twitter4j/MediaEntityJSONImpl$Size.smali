.class Ltwitter4j/MediaEntityJSONImpl$Size;
.super Ljava/lang/Object;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity$Size;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/MediaEntityJSONImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22ea1139d41d0d71L


# instance fields
.field height:I

.field resize:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "w"

    .line 144
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    const-string v0, "h"

    .line 145
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    const-string v0, "fit"

    const-string v1, "resize"

    .line 146
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    :goto_0
    iput p1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 167
    :cond_0
    instance-of v1, p1, Ltwitter4j/MediaEntityJSONImpl$Size;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 169
    :cond_1
    check-cast p1, Ltwitter4j/MediaEntityJSONImpl$Size;

    .line 171
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    iget v3, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    if-eq v1, v3, :cond_2

    return v2

    .line 172
    :cond_2
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    iget v3, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    if-eq v1, v3, :cond_3

    return v2

    .line 173
    :cond_3
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    iget p1, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 156
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    return v0
.end method

.method public getResize()I
    .locals 1

    .line 161
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 151
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 180
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 182
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
