.class Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheReadWorkItem"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private context:Landroid/content/Context;

.field private key:Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    .line 359
    iput-object p2, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;

    .line 360
    iput-boolean p3, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/umeng/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    invoke-static {v0, v1, v2}, Lcom/umeng/facebook/internal/ImageDownloader;->access$100(Lcom/umeng/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method
