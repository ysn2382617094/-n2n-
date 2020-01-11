.class public final Ltwitter4j/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ltwitter4j/HttpParameter;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = 0x382981cb088625a4L


# instance fields
.field private file:Ljava/io/File;

.field private fileBody:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 66
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 67
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 56
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 61
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 62
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 45
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 40
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 50
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 52
    iput-object p3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 37
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 71
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 72
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void
.end method

.method static containsFile(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/HttpParameter;

    .line 178
    invoke-virtual {v0}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static containsFile([Ltwitter4j/HttpParameter;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 165
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 166
    invoke-virtual {v3}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%2A"

    const-string v1, "*"

    .line 292
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2a"

    const-string v1, "*"

    .line 293
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%20"

    const-string v1, " "

    .line 294
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "UTF-8"

    .line 298
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static decodeParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "&"

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "="

    const/4 v6, 0x2

    .line 315
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 316
    array-length v5, v4

    if-ne v5, v6, :cond_0

    .line 317
    aget-object v5, v4, v2

    invoke-static {v5}, Ltwitter4j/HttpParameter;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 318
    aget-object v4, v4, v6

    invoke-static {v4}, Ltwitter4j/HttpParameter;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 320
    new-instance v6, Ltwitter4j/HttpParameter;

    invoke-direct {v6, v5, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "UTF-8"

    .line 262
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 265
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 267
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    const-string v2, "%2A"

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    const-string v2, "%20"

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 274
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    const/16 v1, 0x7e

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 240
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, "&"

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    iget-object p0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]should be text"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/HttpParameter;
    .locals 0

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/HttpParameter;
    .locals 0

    .line 202
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .locals 2

    const/4 v0, 0x1

    .line 187
    new-array v0, v0, [Ltwitter4j/HttpParameter;

    new-instance v1, Ltwitter4j/HttpParameter;

    invoke-direct {v1, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .locals 2

    const/4 v0, 0x2

    .line 196
    new-array v0, v0, [Ltwitter4j/HttpParameter;

    new-instance v1, Ltwitter4j/HttpParameter;

    invoke-direct {v1, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    new-instance p0, Ltwitter4j/HttpParameter;

    invoke-direct {p0, p2, p3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Ltwitter4j/HttpParameter;

    invoke-virtual {p0, p1}, Ltwitter4j/HttpParameter;->compareTo(Ltwitter4j/HttpParameter;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ltwitter4j/HttpParameter;)I
    .locals 2

    .line 227
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    iget-object v1, p1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Ltwitter4j/HttpParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 147
    :cond_1
    check-cast p1, Ltwitter4j/HttpParameter;

    .line 149
    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    iget-object v3, p1, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 151
    :cond_3
    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    iget-object v3, p1, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 153
    :cond_5
    iget-object v1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 154
    :cond_6
    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    iget-object p1, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .line 108
    invoke-virtual {p0}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v1, "gif"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "image/gif"

    goto :goto_0

    :cond_1
    const-string v1, "png"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "image/png"

    goto :goto_0

    :cond_2
    const-string v1, "jpg"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "image/jpeg"

    goto :goto_0

    :cond_3
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const-string v1, "jpeg"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "image/jpeg"

    goto :goto_0

    :cond_5
    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_6
    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 84
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileBody()Ljava/io/InputStream;
    .locals 1

    .line 88
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFileBody()Z
    .locals 1

    .line 96
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 207
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 92
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostParameter{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
