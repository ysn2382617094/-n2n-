.class Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadContext"
.end annotation


# instance fields
.field public final accessToken:Lcom/umeng/facebook/AccessToken;

.field public final callback:Lcom/umeng/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field

.field public chunkStart:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final graphNode:Ljava/lang/String;

.field public isCanceled:Z

.field public params:Landroid/os/Bundle;

.field public final ref:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;

.field public videoSize:J

.field public videoStream:Ljava/io/InputStream;

.field public final videoUri:Landroid/net/Uri;

.field public workItem:Lcom/umeng/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method private constructor <init>(Lcom/umeng/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 303
    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 316
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 317
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->title:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->description:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->ref:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/umeng/facebook/FacebookCallback;

    .line 322
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/facebook/share/model/ShareVideo;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    .line 323
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 324
    iget-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string p3, "tags"

    const-string v0, ", "

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 328
    iget-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string p3, "place"

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 332
    iget-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string p3, "ref"

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/share/internal/VideoUploader$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/umeng/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 342
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 341
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 345
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 349
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "Uri must be a content:// or file:// uri"

    invoke-direct {v0, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 356
    iget-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 358
    throw v0
.end method
