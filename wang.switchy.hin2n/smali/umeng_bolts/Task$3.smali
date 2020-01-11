.class final Lumeng_bolts/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->whenAll(Ljava/util/Collection;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lumeng_bolts/Task$TaskCompletionSource;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lumeng_bolts/Task$3;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lumeng_bolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lumeng_bolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lumeng_bolts/Task$3;->val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lumeng_bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$3;->then(Lumeng_bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lumeng_bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lumeng_bolts/Task$3;->val$errorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lumeng_bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lumeng_bolts/Task;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    :cond_1
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 247
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 248
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 249
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

    iget-object v0, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    iget-object v3, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Throwable;

    .line 252
    new-instance v3, Lumeng_bolts/AggregateException;

    const-string v4, "There were %d exceptions."

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lumeng_bolts/Task$3;->val$causes:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lumeng_bolts/AggregateException;-><init>(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 255
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1, v3}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 257
    :cond_3
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 258
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lumeng_bolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_1

    .line 260
    :cond_4
    iget-object p1, p0, Lumeng_bolts/Task$3;->val$allFinished:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1, v1}, Lumeng_bolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v1
.end method
