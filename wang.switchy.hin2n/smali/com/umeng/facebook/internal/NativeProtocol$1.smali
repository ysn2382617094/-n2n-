.class final Lcom/umeng/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 862
    :try_start_0
    invoke-static {}, Lcom/umeng/facebook/internal/NativeProtocol;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/facebook/internal/NativeProtocol$NativeAppInfo;

    const/4 v3, 0x1

    .line 863
    invoke-static {v2, v3}, Lcom/umeng/facebook/internal/NativeProtocol$NativeAppInfo;->access$600(Lcom/umeng/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 866
    :cond_0
    invoke-static {}, Lcom/umeng/facebook/internal/NativeProtocol;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/umeng/facebook/internal/NativeProtocol;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
