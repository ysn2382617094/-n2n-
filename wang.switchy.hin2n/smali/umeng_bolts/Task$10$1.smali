.class Lumeng_bolts/Task$10$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/Task$10;


# direct methods
.method constructor <init>(Lumeng_bolts/Task$10;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lumeng_bolts/Task$10$1;->this$0:Lumeng_bolts/Task$10;

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

    .line 490
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$10$1;->then(Lumeng_bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lumeng_bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object p1, p0, Lumeng_bolts/Task$10$1;->this$0:Lumeng_bolts/Task$10;

    iget-object p1, p1, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lumeng_bolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lumeng_bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lumeng_bolts/Task$10$1;->this$0:Lumeng_bolts/Task$10;

    iget-object v0, v0, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lumeng_bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lumeng_bolts/Task$10$1;->this$0:Lumeng_bolts/Task$10;

    iget-object v0, v0, Lumeng_bolts/Task$10;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lumeng_bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lumeng_bolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
