.class public Lumeng_bolts/AggregateException;
.super Ljava/lang/Exception;
.source "AggregateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private causes:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 20
    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 21
    array-length p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lumeng_bolts/AggregateException;->causes:[Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "There were multiple errors."

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Exception;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lumeng_bolts/AggregateException;-><init>(Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCauses()[Ljava/lang/Throwable;
    .locals 1

    .line 54
    iget-object v0, p0, Lumeng_bolts/AggregateException;->causes:[Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v1, p0, Lumeng_bolts/AggregateException;->causes:[Ljava/lang/Throwable;

    if-nez v1, :cond_0

    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lumeng_bolts/AggregateException;->causes:[Ljava/lang/Throwable;

    .line 38
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 41
    aget-object v4, v1, v3

    .line 42
    instance-of v5, v4, Ljava/lang/Exception;

    if-eqz v5, :cond_1

    .line 43
    check-cast v4, Ljava/lang/Exception;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
