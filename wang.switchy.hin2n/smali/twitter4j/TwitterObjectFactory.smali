.class public final Ltwitter4j/TwitterObjectFactory;
.super Ljava/lang/Object;
.source "TwitterObjectFactory.java"


# static fields
.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredAtleastOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ltwitter4j/TwitterObjectFactory$1;

    invoke-direct {v0}, Ltwitter4j/TwitterObjectFactory$1;-><init>()V

    sput-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static clearThreadLocalMap()V
    .locals 1

    .line 63
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 31
    sget-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Apparently jsonStoreEnabled is not set to true."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    .line 75
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
