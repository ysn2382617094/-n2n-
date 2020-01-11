.class Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/umeng/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/umeng/facebook/GraphResponse;)V
    .locals 2

    .line 751
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getError()Lcom/umeng/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0}, Lcom/umeng/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error staging photo."

    .line 757
    :cond_0
    new-instance v1, Lcom/umeng/facebook/FacebookGraphResponseException;

    invoke-direct {v1, p1, v0}, Lcom/umeng/facebook/FacebookGraphResponseException;-><init>(Lcom/umeng/facebook/GraphResponse;Ljava/lang/String;)V

    throw v1

    .line 759
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "uri"

    .line 763
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 767
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v1, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 765
    :cond_2
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Error staging photo."

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 761
    :cond_3
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Error staging photo."

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 769
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-static {v0}, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v0

    iget v1, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v0, v1

    .line 771
    :goto_0
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
