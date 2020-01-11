.class public final Lcom/umeng/facebook/internal/CallbackManagerImpl;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/umeng/facebook/CallbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;,
        Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;
    }
.end annotation


# static fields
.field private static staticCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized getStaticCallback(Ljava/lang/Integer;)Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;
    .locals 2

    const-class v0, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerStaticCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V
    .locals 3

    const-class v0, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "callback"

    .line 50
    invoke-static {p1, v1}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 52
    monitor-exit v0

    return-void

    .line 54
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0

    throw p0
.end method

.method private static runStaticCallback(IILandroid/content/Intent;)Z
    .locals 0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->getStaticCallback(Ljava/lang/Integer;)Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0, p1, p2}, Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/umeng/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p2, p3}, Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->runStaticCallback(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public registerCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V
    .locals 1

    const-string v0, "callback"

    .line 75
    invoke-static {p2, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/umeng/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
