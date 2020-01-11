.class final Lumeng_bolts/AndroidExecutors;
.super Ljava/lang/Object;
.source "AndroidExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lumeng_bolts/AndroidExecutors$UIThreadExecutor;
    }
.end annotation


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final INSTANCE:Lumeng_bolts/AndroidExecutors;

.field static final KEEP_ALIVE_TIME:J = 0x1L

.field static final MAX_POOL_SIZE:I


# instance fields
.field private final uiThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lumeng_bolts/AndroidExecutors;

    invoke-direct {v0}, Lumeng_bolts/AndroidExecutors;-><init>()V

    sput-object v0, Lumeng_bolts/AndroidExecutors;->INSTANCE:Lumeng_bolts/AndroidExecutors;

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lumeng_bolts/AndroidExecutors;->CPU_COUNT:I

    .line 60
    sget v0, Lumeng_bolts/AndroidExecutors;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lumeng_bolts/AndroidExecutors;->CORE_POOL_SIZE:I

    .line 61
    sget v0, Lumeng_bolts/AndroidExecutors;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lumeng_bolts/AndroidExecutors;->MAX_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lumeng_bolts/AndroidExecutors$UIThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lumeng_bolts/AndroidExecutors$UIThreadExecutor;-><init>(Lumeng_bolts/AndroidExecutors$1;)V

    iput-object v0, p0, Lumeng_bolts/AndroidExecutors;->uiThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-void
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 36
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lumeng_bolts/AndroidExecutors;->CORE_POOL_SIZE:I

    sget v2, Lumeng_bolts/AndroidExecutors;->MAX_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    .line 37
    invoke-static {v7, v0}, Lumeng_bolts/AndroidExecutors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    return-object v7
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 42
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lumeng_bolts/AndroidExecutors;->CORE_POOL_SIZE:I

    sget v2, Lumeng_bolts/AndroidExecutors;->MAX_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1

    move-object v0, v8

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    .line 43
    invoke-static {v8, p0}, Lumeng_bolts/AndroidExecutors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    return-object v8
.end method

.method public static uiThread()Ljava/util/concurrent/Executor;
    .locals 1

    .line 56
    sget-object v0, Lumeng_bolts/AndroidExecutors;->INSTANCE:Lumeng_bolts/AndroidExecutors;

    iget-object v0, v0, Lumeng_bolts/AndroidExecutors;->uiThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method
