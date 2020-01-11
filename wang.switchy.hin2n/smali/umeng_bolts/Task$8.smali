.class Lumeng_bolts/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->onSuccessTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "TTResult;",
        "Lumeng_bolts/Task<",
        "TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/Task;

.field final synthetic val$continuation:Lumeng_bolts/Continuation;


# direct methods
.method constructor <init>(Lumeng_bolts/Task;Lumeng_bolts/Continuation;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lumeng_bolts/Task$8;->this$0:Lumeng_bolts/Task;

    iput-object p2, p0, Lumeng_bolts/Task$8;->val$continuation:Lumeng_bolts/Continuation;

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

    .line 407
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$8;->then(Lumeng_bolts/Task;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "TTResult;>;)",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lumeng_bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, Lumeng_bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lumeng_bolts/Task;->forError(Ljava/lang/Exception;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1

    .line 412
    :cond_0
    invoke-virtual {p1}, Lumeng_bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, Lumeng_bolts/Task;->cancelled()Lumeng_bolts/Task;

    move-result-object p1

    return-object p1

    .line 415
    :cond_1
    iget-object v0, p0, Lumeng_bolts/Task$8;->val$continuation:Lumeng_bolts/Continuation;

    invoke-virtual {p1, v0}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method
