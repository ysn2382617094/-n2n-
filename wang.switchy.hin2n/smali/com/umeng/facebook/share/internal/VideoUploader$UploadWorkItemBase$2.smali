.class Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;->issueResponseOnMainThread(Lcom/umeng/facebook/FacebookException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;

.field final synthetic val$error:Lcom/umeng/facebook/FacebookException;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;Lcom/umeng/facebook/FacebookException;Ljava/lang/String;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->this$0:Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iput-object p2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$error:Lcom/umeng/facebook/FacebookException;

    iput-object p3, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$videoId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->this$0:Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iget-object v0, v0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$error:Lcom/umeng/facebook/FacebookException;

    iget-object v2, p0, Lcom/umeng/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$videoId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/facebook/share/internal/VideoUploader;->access$900(Lcom/umeng/facebook/share/internal/VideoUploader$UploadContext;Lcom/umeng/facebook/FacebookException;Ljava/lang/String;)V

    return-void
.end method
