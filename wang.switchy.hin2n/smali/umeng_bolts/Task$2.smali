.class final Lumeng_bolts/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lumeng_bolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lumeng_bolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lumeng_bolts/Task$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    iput-object p2, p0, Lumeng_bolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    :try_start_0
    iget-object v0, p0, Lumeng_bolts/Task$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lumeng_bolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lumeng_bolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lumeng_bolts/Task$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
