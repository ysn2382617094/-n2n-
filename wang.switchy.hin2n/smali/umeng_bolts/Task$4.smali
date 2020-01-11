.class Lumeng_bolts/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "Ljava/lang/Void;",
        "Lumeng_bolts/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/Task;

.field final synthetic val$continuation:Lumeng_bolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lumeng_bolts/Capture;


# direct methods
.method constructor <init>(Lumeng_bolts/Task;Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;Lumeng_bolts/Capture;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lumeng_bolts/Task$4;->this$0:Lumeng_bolts/Task;

    iput-object p2, p0, Lumeng_bolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lumeng_bolts/Task$4;->val$continuation:Lumeng_bolts/Continuation;

    iput-object p4, p0, Lumeng_bolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lumeng_bolts/Task$4;->val$predicateContinuation:Lumeng_bolts/Capture;

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

    .line 288
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$4;->then(Lumeng_bolts/Task;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Lumeng_bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    iget-object p1, p0, Lumeng_bolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 292
    invoke-static {v0}, Lumeng_bolts/Task;->forResult(Ljava/lang/Object;)Lumeng_bolts/Task;

    move-result-object p1

    iget-object v0, p0, Lumeng_bolts/Task$4;->val$continuation:Lumeng_bolts/Continuation;

    iget-object v1, p0, Lumeng_bolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lumeng_bolts/Task;->onSuccessTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    iget-object v0, p0, Lumeng_bolts/Task$4;->val$predicateContinuation:Lumeng_bolts/Capture;

    .line 293
    invoke-virtual {v0}, Lumeng_bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lumeng_bolts/Continuation;

    iget-object v1, p0, Lumeng_bolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lumeng_bolts/Task;->onSuccessTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1

    .line 295
    :cond_0
    invoke-static {v0}, Lumeng_bolts/Task;->forResult(Ljava/lang/Object;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method
