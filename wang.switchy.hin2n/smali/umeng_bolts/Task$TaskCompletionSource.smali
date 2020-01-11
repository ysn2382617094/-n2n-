.class public Lumeng_bolts/Task$TaskCompletionSource;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/Task;


# direct methods
.method private constructor <init>(Lumeng_bolts/Task;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lumeng_bolts/Task;Lumeng_bolts/Task$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lumeng_bolts/Task$TaskCompletionSource;-><init>(Lumeng_bolts/Task;)V

    return-void
.end method


# virtual methods
.method public getTask()Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    return-object v0
.end method

.method public setCancelled()V
    .locals 2

    .line 595
    invoke-virtual {p0}, Lumeng_bolts/Task$TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 1

    .line 613
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 604
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 605
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySetCancelled()Z
    .locals 3

    .line 547
    iget-object v0, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v0}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1}, Lumeng_bolts/Task;->access$400(Lumeng_bolts/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 549
    monitor-exit v0

    return v1

    .line 551
    :cond_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lumeng_bolts/Task;->access$402(Lumeng_bolts/Task;Z)Z

    .line 552
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1, v2}, Lumeng_bolts/Task;->access$502(Lumeng_bolts/Task;Z)Z

    .line 553
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 554
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1}, Lumeng_bolts/Task;->access$600(Lumeng_bolts/Task;)V

    .line 555
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 3

    .line 579
    iget-object v0, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v0}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1}, Lumeng_bolts/Task;->access$400(Lumeng_bolts/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 581
    monitor-exit v0

    return p1

    .line 583
    :cond_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lumeng_bolts/Task;->access$402(Lumeng_bolts/Task;Z)Z

    .line 584
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1, p1}, Lumeng_bolts/Task;->access$802(Lumeng_bolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 585
    iget-object p1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {p1}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 586
    iget-object p1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {p1}, Lumeng_bolts/Task;->access$600(Lumeng_bolts/Task;)V

    .line 587
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v0}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1}, Lumeng_bolts/Task;->access$400(Lumeng_bolts/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 565
    monitor-exit v0

    return p1

    .line 567
    :cond_0
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lumeng_bolts/Task;->access$402(Lumeng_bolts/Task;Z)Z

    .line 568
    iget-object v1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {v1, p1}, Lumeng_bolts/Task;->access$702(Lumeng_bolts/Task;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {p1}, Lumeng_bolts/Task;->access$300(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 570
    iget-object p1, p0, Lumeng_bolts/Task$TaskCompletionSource;->this$0:Lumeng_bolts/Task;

    invoke-static {p1}, Lumeng_bolts/Task;->access$600(Lumeng_bolts/Task;)V

    .line 571
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
