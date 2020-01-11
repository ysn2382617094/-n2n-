.class public Lcom/umeng/facebook/GraphRequestBatch;
.super Ljava/util/AbstractList;
.source "GraphRequestBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/GraphRequestBatch$OnProgressCallback;,
        Lcom/umeng/facebook/GraphRequestBatch$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/umeng/facebook/GraphRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private batchApplicationId:Ljava/lang/String;

.field private callbackHandler:Landroid/os/Handler;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/umeng/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 42
    sget-object v0, Lcom/umeng/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/umeng/facebook/GraphRequest;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 42
    sget-object v0, Lcom/umeng/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILcom/umeng/facebook/GraphRequest;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/umeng/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequestBatch;->add(ILcom/umeng/facebook/GraphRequest;)V

    return-void
.end method

.method public final add(Lcom/umeng/facebook/GraphRequest;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p1, Lcom/umeng/facebook/GraphRequest;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/GraphRequestBatch;->add(Lcom/umeng/facebook/GraphRequest;)Z

    move-result p1

    return p1
.end method

.method public addCallback(Lcom/umeng/facebook/GraphRequestBatch$Callback;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final executeAndWait()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->executeAndWaitImpl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeAndWaitImpl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAndWait(Lcom/umeng/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequestBatch;->executeAsyncImpl()Lcom/umeng/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method executeAsyncImpl()Lcom/umeng/facebook/GraphRequestAsyncTask;
    .locals 1

    .line 260
    invoke-static {p0}, Lcom/umeng/facebook/GraphRequest;->executeBatchAsync(Lcom/umeng/facebook/GraphRequestBatch;)Lcom/umeng/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lcom/umeng/facebook/GraphRequest;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/GraphRequestBatch;->get(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final getBatchApplicationId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->batchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method final getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method final getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method final getId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method final getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    return v0
.end method

.method public final remove(I)Lcom/umeng/facebook/GraphRequest;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/GraphRequestBatch;->remove(I)Lcom/umeng/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphRequest;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p2, Lcom/umeng/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/GraphRequestBatch;->set(ILcom/umeng/facebook/GraphRequest;)Lcom/umeng/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method final setCallbackHandler(Landroid/os/Handler;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    return-void
.end method

.method public final size()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
