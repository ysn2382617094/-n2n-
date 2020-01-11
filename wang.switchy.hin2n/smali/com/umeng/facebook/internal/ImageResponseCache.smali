.class Lcom/umeng/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImageResponseCache"

.field private static volatile imageCache:Lcom/umeng/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .locals 0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/umeng/facebook/internal/FileLruCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FileLruCache;->clearCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/umeng/facebook/internal/FileLruCache;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class p0, Lcom/umeng/facebook/internal/ImageResponseCache;

    monitor-enter p0

    .line 45
    :try_start_0
    sget-object v0, Lcom/umeng/facebook/internal/ImageResponseCache;->imageCache:Lcom/umeng/facebook/internal/FileLruCache;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/umeng/facebook/internal/FileLruCache;

    sget-object v1, Lcom/umeng/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/umeng/facebook/internal/FileLruCache$Limits;

    invoke-direct {v2}, Lcom/umeng/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/umeng/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/umeng/facebook/internal/ImageResponseCache;->imageCache:Lcom/umeng/facebook/internal/FileLruCache;

    .line 48
    :cond_0
    sget-object v0, Lcom/umeng/facebook/internal/ImageResponseCache;->imageCache:Lcom/umeng/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0

    throw v0
.end method

.method static getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/umeng/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/umeng/facebook/internal/FileLruCache;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-static {v0}, Lcom/umeng/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {p0}, Lcom/umeng/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/umeng/facebook/internal/FileLruCache;

    move-result-object p0

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/umeng/facebook/internal/ImageResponseCache$BufferedHttpInputStream;

    invoke-direct {v2, v1, p1}, Lcom/umeng/facebook/internal/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 82
    invoke-virtual {p0, v0, v2}, Lcom/umeng/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static isCDNURL(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fbcdn.net"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "fbcdn"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "akamaihd.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
