.class Lcom/umeng/facebook/RequestProgress$1;
.super Ljava/lang/Object;
.source "RequestProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/RequestProgress;->reportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/RequestProgress;

.field final synthetic val$callbackCopy:Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

.field final synthetic val$currentCopy:J

.field final synthetic val$maxProgressCopy:J


# direct methods
.method constructor <init>(Lcom/umeng/facebook/RequestProgress;Lcom/umeng/facebook/GraphRequest$OnProgressCallback;JJ)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/umeng/facebook/RequestProgress$1;->this$0:Lcom/umeng/facebook/RequestProgress;

    iput-object p2, p0, Lcom/umeng/facebook/RequestProgress$1;->val$callbackCopy:Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

    iput-wide p3, p0, Lcom/umeng/facebook/RequestProgress$1;->val$currentCopy:J

    iput-wide p5, p0, Lcom/umeng/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/umeng/facebook/RequestProgress$1;->val$callbackCopy:Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

    iget-wide v1, p0, Lcom/umeng/facebook/RequestProgress$1;->val$currentCopy:J

    iget-wide v3, p0, Lcom/umeng/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/umeng/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    return-void
.end method
