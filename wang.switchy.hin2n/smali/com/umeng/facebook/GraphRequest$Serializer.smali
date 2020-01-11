.class Lcom/umeng/facebook/GraphRequest$Serializer;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/umeng/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final outputStream:Ljava/io/OutputStream;

.field private useUrlEncode:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 2073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2070
    iput-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->firstWrite:Z

    const/4 v0, 0x0

    .line 2071
    iput-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2074
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2076
    iput-boolean p2, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    return-void
.end method

.method private getInvalidTypeError()Ljava/lang/RuntimeException;
    .locals 2

    .line 2112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2265
    iget-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_1

    .line 2266
    iget-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2269
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2270
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 2271
    iput-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 2275
    :cond_1
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2277
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 2276
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2277
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2275
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/png"

    .line 2155
    invoke-virtual {p0, p1, p1, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p1, ""

    const/4 p2, 0x0

    .line 2158
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2159
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content/unknown"

    .line 2166
    invoke-virtual {p0, p1, p1, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p1, ""

    const/4 p2, 0x0

    .line 2168
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2169
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2249
    iget-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    .line 2250
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string p1, "; filename=\"%s\""

    .line 2252
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, ""

    .line 2254
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const-string p1, "%s: %s"

    const/4 p2, 0x2

    .line 2256
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Content-Type"

    aput-object v0, p2, v2

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string p1, ""

    .line 2258
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2260
    :cond_2
    iget-object p2, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string p3, "%s="

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 2182
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of p1, p1, Lcom/umeng/facebook/ProgressNoopOutputStream;

    if-eqz p1, :cond_1

    .line 2187
    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide p1

    .line 2189
    iget-object p3, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast p3, Lcom/umeng/facebook/ProgressNoopOutputStream;

    invoke-virtual {p3, p1, p2}, Lcom/umeng/facebook/ProgressNoopOutputStream;->addProgress(J)V

    goto :goto_0

    .line 2192
    :cond_1
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2194
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 2195
    iget-object p2, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/umeng/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    :goto_0
    const-string p1, ""

    const/4 p2, 0x0

    .line 2198
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2199
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 2215
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of p1, p1, Lcom/umeng/facebook/ProgressNoopOutputStream;

    if-eqz p1, :cond_1

    .line 2221
    iget-object p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast p1, Lcom/umeng/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/umeng/facebook/ProgressNoopOutputStream;->addProgress(J)V

    goto :goto_0

    .line 2223
    :cond_1
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2225
    iget-object p2, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/umeng/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    :goto_0
    const-string p1, ""

    const/4 p2, 0x0

    .line 2227
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2282
    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2283
    iget-boolean p1, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez p1, :cond_0

    const-string p1, "\r\n"

    const/4 p2, 0x0

    .line 2284
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/umeng/facebook/GraphRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/umeng/facebook/RequestOutputStream;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/umeng/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/umeng/facebook/RequestOutputStream;->setCurrentRequest(Lcom/umeng/facebook/GraphRequest;)V

    .line 2084
    :cond_0
    invoke-static {p2}, Lcom/umeng/facebook/GraphRequest;->access$000(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2085
    invoke-static {p2}, Lcom/umeng/facebook/GraphRequest;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2086
    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 2087
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2088
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 2089
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2090
    :cond_3
    instance-of p3, p2, Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 2091
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2092
    :cond_4
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz p3, :cond_5

    .line 2093
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2094
    :cond_5
    instance-of p3, p2, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p3, :cond_8

    .line 2095
    check-cast p2, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2097
    invoke-virtual {p2}, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;->getResource()Landroid/os/Parcelable;

    move-result-object p3

    .line 2098
    invoke-virtual {p2}, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 2099
    instance-of v0, p3, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    .line 2100
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p3, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    :cond_6
    instance-of v0, p3, Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 2102
    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2104
    :cond_7
    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2107
    :cond_8
    invoke-direct {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public writeRecordBoundary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2237
    iget-boolean v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_0

    const-string v0, "--%s"

    const/4 v1, 0x1

    .line 2238
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/umeng/facebook/RequestOutputStream;

    if-nez v0, :cond_0

    .line 2121
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/umeng/facebook/RequestOutputStream;

    const/4 v1, 0x0

    .line 2126
    invoke-virtual {p0, p1, v1, v1}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "["

    const/4 v1, 0x0

    .line 2127
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/GraphRequest;

    .line 2130
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2131
    invoke-interface {v0, v2}, Lcom/umeng/facebook/RequestOutputStream;->setCurrentRequest(Lcom/umeng/facebook/GraphRequest;)V

    const/4 v2, 0x1

    if-lez p3, :cond_1

    const-string v4, ",%s"

    .line 2133
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v4, "%s"

    .line 2135
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "]"

    .line 2139
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2146
    invoke-virtual {p0, p1, v0, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "%s"

    const/4 v0, 0x1

    .line 2147
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    return-void
.end method
