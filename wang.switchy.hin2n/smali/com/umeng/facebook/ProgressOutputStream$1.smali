.class Lcom/umeng/facebook/ProgressOutputStream$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/ProgressOutputStream;->reportBatchProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/ProgressOutputStream;

.field final synthetic val$progressCallback:Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/ProgressOutputStream;Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->this$0:Lcom/umeng/facebook/ProgressOutputStream;

    iput-object p2, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;

    iget-object v1, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->this$0:Lcom/umeng/facebook/ProgressOutputStream;

    .line 80
    invoke-static {v1}, Lcom/umeng/facebook/ProgressOutputStream;->access$000(Lcom/umeng/facebook/ProgressOutputStream;)Lcom/umeng/facebook/GraphRequestBatch;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->this$0:Lcom/umeng/facebook/ProgressOutputStream;

    .line 81
    invoke-static {v2}, Lcom/umeng/facebook/ProgressOutputStream;->access$100(Lcom/umeng/facebook/ProgressOutputStream;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/umeng/facebook/ProgressOutputStream$1;->this$0:Lcom/umeng/facebook/ProgressOutputStream;

    .line 82
    invoke-static {v4}, Lcom/umeng/facebook/ProgressOutputStream;->access$200(Lcom/umeng/facebook/ProgressOutputStream;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;->onBatchProgress(Lcom/umeng/facebook/GraphRequestBatch;JJ)V

    return-void
.end method
