.class public Lumeng_bolts/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lumeng_bolts/Task$TaskCompletionSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lumeng_bolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lumeng_bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, Lumeng_bolts/BoltsExecutors;->immediate()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, Lumeng_bolts/AndroidExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lumeng_bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lumeng_bolts/Task;->continuations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lumeng_bolts/Task;->completeImmediately(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$200(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lumeng_bolts/Task;->completeAfterTask(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$300(Lumeng_bolts/Task;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lumeng_bolts/Task;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lumeng_bolts/Task;->complete:Z

    return p0
.end method

.method static synthetic access$402(Lumeng_bolts/Task;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lumeng_bolts/Task;->complete:Z

    return p1
.end method

.method static synthetic access$502(Lumeng_bolts/Task;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lumeng_bolts/Task;->cancelled:Z

    return p1
.end method

.method static synthetic access$600(Lumeng_bolts/Task;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lumeng_bolts/Task;->runContinuations()V

    return-void
.end method

.method static synthetic access$702(Lumeng_bolts/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    iput-object p1, p0, Lumeng_bolts/Task;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lumeng_bolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 27
    iput-object p1, p0, Lumeng_bolts/Task;->error:Ljava/lang/Exception;

    return-object p1
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 208
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lumeng_bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 191
    new-instance v1, Lumeng_bolts/Task$2;

    invoke-direct {v1, v0, p0}, Lumeng_bolts/Task$2;-><init>(Lumeng_bolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 183
    sget-object v0, Lumeng_bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, Lumeng_bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static cancelled()Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 146
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->setCancelled()V

    .line 148
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static completeAfterTask(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>.TaskCompletionSource;",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lumeng_bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 482
    new-instance v0, Lumeng_bolts/Task$10;

    invoke-direct {v0, p1, p2, p0}, Lumeng_bolts/Task$10;-><init>(Lumeng_bolts/Continuation;Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static completeImmediately(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>.TaskCompletionSource;",
            "Lumeng_bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lumeng_bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 449
    new-instance v0, Lumeng_bolts/Task$9;

    invoke-direct {v0, p1, p2, p0}, Lumeng_bolts/Task$9;-><init>(Lumeng_bolts/Continuation;Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create()Lumeng_bolts/Task$TaskCompletionSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lumeng_bolts/Task<",
            "TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .line 63
    new-instance v0, Lumeng_bolts/Task;

    invoke-direct {v0}, Lumeng_bolts/Task;-><init>()V

    .line 64
    new-instance v1, Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lumeng_bolts/Task$TaskCompletionSource;-><init>(Lumeng_bolts/Task;Lumeng_bolts/Task$1;)V

    return-object v1
.end method

.method public static forError(Ljava/lang/Exception;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lumeng_bolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static forResult(Ljava/lang/Object;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lumeng_bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lumeng_bolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private runContinuations()V
    .locals 3

    .line 512
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task;->continuations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lumeng_bolts/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    invoke-interface {v2, p0}, Lumeng_bolts/Continuation;->then(Lumeng_bolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 519
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 517
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 522
    iput-object v1, p0, Lumeng_bolts/Task;->continuations:Ljava/util/List;

    .line 523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static whenAll(Ljava/util/Collection;)Lumeng_bolts/Task;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lumeng_bolts/Task<",
            "*>;>;)",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 221
    invoke-static {p0}, Lumeng_bolts/Task;->forResult(Ljava/lang/Object;)Lumeng_bolts/Task;

    move-result-object p0

    return-object p0

    .line 224
    :cond_0
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v6

    .line 225
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 228
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 230
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lumeng_bolts/Task;

    .line 233
    new-instance v12, Lumeng_bolts/Task$3;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v7

    move-object v3, v10

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lumeng_bolts/Task$3;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lumeng_bolts/Task$TaskCompletionSource;)V

    invoke-virtual {v11, v12}, Lumeng_bolts/Task;->continueWith(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v6}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cast()Lumeng_bolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lumeng_bolts/Task<",
            "TTOut;>;"
        }
    .end annotation

    return-object p0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lumeng_bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 277
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lumeng_bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lumeng_bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v6, Lumeng_bolts/Capture;

    invoke-direct {v6}, Lumeng_bolts/Capture;-><init>()V

    .line 288
    new-instance v7, Lumeng_bolts/Task$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lumeng_bolts/Task$4;-><init>(Lumeng_bolts/Task;Ljava/util/concurrent/Callable;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;Lumeng_bolts/Capture;)V

    invoke-virtual {v6, v7}, Lumeng_bolts/Capture;->set(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lumeng_bolts/Task;->makeVoid()Lumeng_bolts/Task;

    move-result-object p1

    invoke-virtual {v6}, Lumeng_bolts/Capture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lumeng_bolts/Continuation;

    invoke-virtual {p1, p2, p3}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWith(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 334
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lumeng_bolts/Task;->continueWith(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWith(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 309
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lumeng_bolts/Task;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v3, p0, Lumeng_bolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lumeng_bolts/Task$5;

    invoke-direct {v4, p0, v0, p1, p2}, Lumeng_bolts/Task$5;-><init>(Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 323
    invoke-static {v0, p1, p0, p2}, Lumeng_bolts/Task;->completeImmediately(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V

    .line 325
    :cond_1
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 321
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public continueWithTask(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 369
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 344
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lumeng_bolts/Task;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    iget-object v3, p0, Lumeng_bolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lumeng_bolts/Task$6;

    invoke-direct {v4, p0, v0, p1, p2}, Lumeng_bolts/Task$6;-><init>(Lumeng_bolts/Task;Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 358
    invoke-static {v0, p1, p0, p2}, Lumeng_bolts/Task;->completeAfterTask(Lumeng_bolts/Task$TaskCompletionSource;Lumeng_bolts/Continuation;Lumeng_bolts/Task;Ljava/util/concurrent/Executor;)V

    .line 360
    :cond_1
    invoke-virtual {v0}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 356
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .line 108
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task;->error:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-boolean v1, p0, Lumeng_bolts/Task;->cancelled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCompleted()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-boolean v1, p0, Lumeng_bolts/Task;->complete:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFaulted()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lumeng_bolts/Task;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeVoid()Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lumeng_bolts/Task$1;

    invoke-direct {v0, p0}, Lumeng_bolts/Task$1;-><init>(Lumeng_bolts/Task;)V

    invoke-virtual {p0, v0}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 398
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lumeng_bolts/Task;->onSuccess(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccess(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 378
    new-instance v0, Lumeng_bolts/Task$7;

    invoke-direct {v0, p0, p1}, Lumeng_bolts/Task$7;-><init>(Lumeng_bolts/Task;Lumeng_bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccessTask(Lumeng_bolts/Continuation;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 427
    sget-object v0, Lumeng_bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lumeng_bolts/Task;->onSuccessTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccessTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lumeng_bolts/Continuation<",
            "TTResult;",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lumeng_bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 407
    new-instance v0, Lumeng_bolts/Task$8;

    invoke-direct {v0, p0, p1}, Lumeng_bolts/Task$8;-><init>(Lumeng_bolts/Task;Lumeng_bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lumeng_bolts/Task;->continueWithTask(Lumeng_bolts/Continuation;Ljava/util/concurrent/Executor;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lumeng_bolts/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lumeng_bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
