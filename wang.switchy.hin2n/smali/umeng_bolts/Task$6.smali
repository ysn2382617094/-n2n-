.class Lumeng_bolts/Task$6;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/Task;

.field final synthetic val$continuation:Lumeng_bolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lumeng_bolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lumeng_bolts/Task$6;->this$0:Lumeng_bolts/Task;

    iput-object p2, p0, Lumeng_bolts/Task$6;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lumeng_bolts/Task$6;->val$continuation:Lumeng_bolts/Continuation;

    iput-object p4, p0, Lumeng_bolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

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

    .line 348
    invoke-virtual {p0, p1}, Lumeng_bolts/Task$6;->then(Lumeng_bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lumeng_bolts/Task$6;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lumeng_bolts/Task$6;->val$continuation:Lumeng_bolts/Continuation;

    iget-object v2, p0, Lumeng_bolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lumeng_bolts/Task;->access$200(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    return-object p1
.end method
