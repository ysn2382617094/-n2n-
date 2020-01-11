.class Lcom/umeng/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/umeng/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/umeng/facebook/GraphRequest;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/umeng/facebook/RequestProgress;->request:Lcom/umeng/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/umeng/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/umeng/facebook/RequestProgress;->threshold:J

    return-void
.end method


# virtual methods
.method addProgress(J)V
    .locals 4

    .line 42
    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    .line 44
    iget-wide p1, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v2, p0, Lcom/umeng/facebook/RequestProgress;->threshold:J

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-wide p1, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->maxProgress:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/RequestProgress;->reportProgress()V

    :cond_1
    return-void
.end method

.method addToMax(J)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->maxProgress:J

    return-void
.end method

.method reportProgress()V
    .locals 9

    .line 54
    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/umeng/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 55
    iget-object v0, p0, Lcom/umeng/facebook/RequestProgress;->request:Lcom/umeng/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequest;->getCallback()Lcom/umeng/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 56
    iget-wide v1, p0, Lcom/umeng/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    instance-of v1, v0, Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_1

    .line 58
    iget-wide v5, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    .line 59
    iget-wide v7, p0, Lcom/umeng/facebook/RequestProgress;->maxProgress:J

    .line 60
    move-object v4, v0

    check-cast v4, Lcom/umeng/facebook/GraphRequest$OnProgressCallback;

    .line 62
    iget-object v0, p0, Lcom/umeng/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 63
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/umeng/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/facebook/RequestProgress$1;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/umeng/facebook/RequestProgress$1;-><init>(Lcom/umeng/facebook/RequestProgress;Lcom/umeng/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :goto_0
    iget-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->progress:J

    iput-wide v0, p0, Lcom/umeng/facebook/RequestProgress;->lastReportedProgress:J

    :cond_1
    return-void
.end method
