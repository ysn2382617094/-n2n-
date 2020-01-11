.class final Lcom/umeng/facebook/GraphRequest$2;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/GraphRequest;->runCallbacks(Lcom/umeng/facebook/GraphRequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/umeng/facebook/GraphRequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/umeng/facebook/GraphRequestBatch;)V
    .locals 0

    .line 1384
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest$2;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/umeng/facebook/GraphRequest$2;->val$requests:Lcom/umeng/facebook/GraphRequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1386
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$2;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1387
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/umeng/facebook/GraphRequest$Callback;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/umeng/facebook/GraphResponse;

    invoke-interface {v2, v1}, Lcom/umeng/facebook/GraphRequest$Callback;->onCompleted(Lcom/umeng/facebook/GraphResponse;)V

    goto :goto_0

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$2;->val$requests:Lcom/umeng/facebook/GraphRequestBatch;

    invoke-virtual {v0}, Lcom/umeng/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/GraphRequestBatch$Callback;

    .line 1392
    iget-object v2, p0, Lcom/umeng/facebook/GraphRequest$2;->val$requests:Lcom/umeng/facebook/GraphRequestBatch;

    invoke-interface {v1, v2}, Lcom/umeng/facebook/GraphRequestBatch$Callback;->onBatchCompleted(Lcom/umeng/facebook/GraphRequestBatch;)V

    goto :goto_1

    :cond_1
    return-void
.end method
