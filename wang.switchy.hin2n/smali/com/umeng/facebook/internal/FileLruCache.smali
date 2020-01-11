.class public final Lcom/umeng/facebook/internal/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/umeng/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/umeng/facebook/internal/FileLruCache$Limits;,
        Lcom/umeng/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/umeng/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/umeng/facebook/internal/FileLruCache$StreamHeader;,
        Lcom/umeng/facebook/internal/FileLruCache$BufferFile;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "FileLruCache"

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimInProgress:Z

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/umeng/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/umeng/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/facebook/internal/FileLruCache$Limits;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    iput-object p1, p0, Lcom/umeng/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/umeng/facebook/internal/FileLruCache;->limits:Lcom/umeng/facebook/internal/FileLruCache$Limits;

    .line 95
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    .line 96
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/umeng/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/umeng/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/facebook/internal/FileLruCache;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/umeng/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 76
    sget-object v0, Lcom/umeng/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private postTrim()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 298
    iput-boolean v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 299
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/umeng/facebook/internal/FileLruCache$3;

    invoke-direct {v2, p0}, Lcom/umeng/facebook/internal/FileLruCache$3;-><init>(Lcom/umeng/facebook/internal/FileLruCache;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/umeng/facebook/internal/FileLruCache;->postTrim()V

    return-void
.end method

.method private trim()V
    .locals 14

    .line 310
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 311
    :try_start_0
    iput-boolean v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimPending:Z

    const/4 v2, 0x1

    .line 312
    iput-boolean v2, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 316
    :try_start_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 319
    iget-object v2, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/umeng/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    .line 321
    array-length v7, v2

    move-wide v8, v5

    move-wide v10, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v6, v2, v5

    .line 322
    new-instance v12, Lcom/umeng/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v12, v6}, Lcom/umeng/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    .line 323
    invoke-virtual {v0, v12}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v6, 0x0

    add-long/2addr v8, v12

    add-long/2addr v10, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-wide v5, v8

    goto :goto_1

    :cond_1
    move-wide v10, v5

    .line 331
    :goto_1
    iget-object v2, p0, Lcom/umeng/facebook/internal/FileLruCache;->limits:Lcom/umeng/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v2}, Lcom/umeng/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/umeng/facebook/internal/FileLruCache;->limits:Lcom/umeng/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v2}, Lcom/umeng/facebook/internal/FileLruCache$Limits;->getFileCount()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v7, v2

    cmp-long v2, v10, v7

    if-lez v2, :cond_2

    goto :goto_2

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_2
    iput-boolean v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 341
    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 342
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 332
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v2}, Lcom/umeng/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v5, v7

    sub-long/2addr v10, v3

    .line 336
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 339
    iget-object v2, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 340
    :try_start_4
    iput-boolean v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 341
    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 342
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 313
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/umeng/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/umeng/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0, v0}, Lcom/umeng/facebook/internal/FileLruCache$2;-><init>(Lcom/umeng/facebook/internal/FileLruCache;[Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 151
    :try_start_1
    invoke-static {v3}, Lcom/umeng/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 176
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :cond_0
    :try_start_2
    const-string v4, "key"

    .line 156
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 157
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "tag"

    .line 161
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    .line 176
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    .line 168
    :cond_4
    :try_start_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 170
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    .line 176
    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    throw p1

    :catch_0
    return-object v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 288
    new-instance v0, Lcom/umeng/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v0, p2, p1}, Lcom/umeng/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/umeng/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 201
    new-instance v7, Lcom/umeng/facebook/internal/FileLruCache$1;

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/umeng/facebook/internal/FileLruCache$1;-><init>(Lcom/umeng/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/umeng/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v1, v0, v7}, Lcom/umeng/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/umeng/facebook/internal/FileLruCache$StreamCloseCallback;)V

    .line 216
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 222
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 223
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tag"

    .line 225
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_0
    invoke-static {v0, v1}, Lcom/umeng/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw p1

    :catch_1
    move-exception p1

    .line 197
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 189
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not create file at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
