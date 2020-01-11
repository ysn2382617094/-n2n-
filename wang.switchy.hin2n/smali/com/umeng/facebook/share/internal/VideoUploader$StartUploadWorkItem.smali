.class Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;
.super Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartUploadWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 364
    new-instance v0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;

    invoke-direct {v0}, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v0, p1}, Lcom/umeng/facebook/share/internal/VideoUploader;->access$500(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 4

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "upload_phase"

    const-string v2, "start"

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_size"

    .line 376
    iget-object v2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    iget-wide v2, v2, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-object v0
.end method

.method protected handleError(Lcom/umeng/facebook/FacebookException;)V
    .locals 2

    const-string v0, "Error starting video upload"

    const/4 v1, 0x0

    .line 398
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/umeng/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->endUploadWithFailure(Lcom/umeng/facebook/FacebookException;)V

    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    const-string v1, "upload_session_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    const-string v1, "video_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    const-string v0, "start_offset"

    .line 386
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end_offset"

    .line 387
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    iget-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/umeng/facebook/share/internal/VideoUploader;->access$300(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
