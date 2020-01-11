.class final Lumeng_bolts/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->completeAfterTask(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lumeng_bolts/Continuation;

.field final synthetic val$task:Lumeng_bolts/Task;

.field final synthetic val$tcs:Lumeng_bolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lumeng_bolts/Continuation;Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lumeng_bolts/Task$10;->val$continuation:Lumeng_bolts/Continuation;

    iput-object p2, p0, Lumeng_bolts/Task$10;->val$task:Lumeng_bolts/Task;

    iput-object p3, p0, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    :try_start_0
    iget-object v0, p0, Lumeng_bolts/Task$10;->val$continuation:Lumeng_bolts/Continuation;

    iget-object v1, p0, Lumeng_bolts/Task$10;->val$task:Lumeng_bolts/Task;

    invoke-interface {v0, v1}, Lumeng_bolts/Continuation;->then(Lumeng_bolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lumeng_bolts/Task;

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lumeng_bolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_0
    new-instance v1, Lumeng_bolts/Task$10$1;

    invoke-direct {v1, p0}, Lumeng_bolts/Task$10$1;-><init>(Lumeng_bolts/Task$10;)V

    invoke-virtual {v0, v1}, Lumeng_bolts/Task;->continueWith(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
