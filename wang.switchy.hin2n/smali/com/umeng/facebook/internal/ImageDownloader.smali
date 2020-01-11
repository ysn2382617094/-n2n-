.class public Lcom/umeng/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/umeng/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/umeng/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/umeng/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/umeng/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->downloadQueue:Lcom/umeng/facebook/internal/WorkQueue;

    .line 52
    new-instance v0, Lcom/umeng/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/umeng/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/umeng/facebook/internal/WorkQueue;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lcom/umeng/facebook/internal/ImageDownloader;->readFromCache(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/umeng/facebook/internal/ImageDownloader;->download(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/umeng/facebook/internal/ImageRequest;)Z
    .locals 4

    .line 87
    new-instance v0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 88
    sget-object p0, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 97
    iget-object v3, v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/umeng/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/umeng/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_0
    iput-boolean v2, v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 105
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/umeng/facebook/internal/UrlRedirectCache;->clearCache()V

    return-void
.end method

.method private static download(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 234
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 236
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 238
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 268
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 269
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_1

    .line 271
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    .line 272
    new-array v6, v6, [C

    .line 274
    :goto_0
    array-length v7, v6

    invoke-virtual {p1, v6, v1, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v7

    if-lez v7, :cond_0

    .line 275
    invoke-virtual {v5, v6, v1, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_1
    const-string v6, "com_facebook_image_download_unknown_error"

    .line 280
    invoke-static {p1, v6}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v8

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :pswitch_0
    :try_start_3
    const-string p1, "location"

    .line 244
    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 247
    iget-object v2, p0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/umeng/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 251
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 252
    iget-boolean v4, v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v4, :cond_2

    .line 253
    iget-object v2, v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/umeng/facebook/internal/ImageRequest;

    new-instance v4, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;

    iget-object v5, p0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v4, p1, v5}, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-static {v2, v4, v1}, Lcom/umeng/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object p1, v0

    move-object v4, p1

    const/4 v2, 0x0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, v0

    const/4 v2, 0x0

    goto :goto_4

    .line 263
    :cond_3
    :try_start_4
    invoke-static {p1, v3}, Lcom/umeng/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 264
    :try_start_5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :goto_2
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    invoke-static {v3}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object p1, v0

    move-object v0, v4

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v4, v0

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v3, v0

    .line 289
    :goto_3
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    invoke-static {v3}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw p0

    :catch_4
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    .line 289
    :goto_4
    invoke-static {v4}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    invoke-static {v3}, Lcom/umeng/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    :goto_5
    if-eqz v2, :cond_4

    .line 294
    invoke-static {p0, p1, v0, v1}, Lcom/umeng/facebook/internal/ImageDownloader;->issueResponse(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static downloadAsync(Lcom/umeng/facebook/internal/ImageRequest;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v2, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    if-eqz v2, :cond_1

    .line 76
    iput-object p0, v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/umeng/facebook/internal/ImageRequest;

    const/4 p0, 0x0

    .line 77
    iput-boolean p0, v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 78
    iget-object p0, v2, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/umeng/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {p0}, Lcom/umeng/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/umeng/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 82
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static enqueueCacheRead(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 3

    .line 129
    sget-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/umeng/facebook/internal/WorkQueue;

    new-instance v1, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;

    .line 133
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 129
    invoke-static {p0, p1, v0, v1}, Lcom/umeng/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Lcom/umeng/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueDownload(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 3

    .line 137
    sget-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->downloadQueue:Lcom/umeng/facebook/internal/WorkQueue;

    new-instance v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    .line 141
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/umeng/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)V

    .line 137
    invoke-static {p0, p1, v0, v1}, Lcom/umeng/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Lcom/umeng/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueRequest(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Lcom/umeng/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3

    .line 149
    sget-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_0
    new-instance v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/umeng/facebook/internal/ImageDownloader$1;)V

    .line 151
    iput-object p0, v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/umeng/facebook/internal/ImageRequest;

    .line 152
    sget-object p0, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p2, p3}, Lcom/umeng/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/umeng/facebook/internal/WorkQueue$WorkItem;

    move-result-object p0

    iput-object p0, v1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/umeng/facebook/internal/WorkQueue$WorkItem;

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/umeng/facebook/internal/ImageDownloader;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 302
    :cond_0
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 298
    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .line 173
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    iget-boolean v0, p0, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/umeng/facebook/internal/ImageRequest;

    .line 176
    invoke-virtual {v2}, Lcom/umeng/facebook/internal/ImageRequest;->getCallback()Lcom/umeng/facebook/internal/ImageRequest$Callback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 178
    invoke-static {}, Lcom/umeng/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/umeng/facebook/internal/ImageDownloader$1;

    move-object v1, v0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/umeng/facebook/internal/ImageDownloader$1;-><init>(Lcom/umeng/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/umeng/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static readFromCache(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 200
    iget-object p2, p0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/umeng/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 202
    invoke-static {p2, p1}, Lcom/umeng/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 208
    iget-object p2, p0, Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lcom/umeng/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 213
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 214
    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0, v1, p1, v0}, Lcom/umeng/facebook/internal/ImageDownloader;->issueResponse(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 219
    :cond_3
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 220
    iget-boolean p2, p1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez p2, :cond_4

    .line 221
    iget-object p1, p1, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/umeng/facebook/internal/ImageRequest;

    invoke-static {p1, p0}, Lcom/umeng/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/umeng/facebook/internal/ImageRequest;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static removePendingRequest(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;)Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 2

    .line 306
    sget-object v0, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 307
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method