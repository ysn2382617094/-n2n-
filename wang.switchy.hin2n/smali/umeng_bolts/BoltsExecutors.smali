.class final Lumeng_bolts/BoltsExecutors;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lumeng_bolts/BoltsExecutors$ImmediateExecutor;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lumeng_bolts/BoltsExecutors;


# instance fields
.field private final background:Ljava/util/concurrent/ExecutorService;

.field private final immediate:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lumeng_bolts/BoltsExecutors;

    invoke-direct {v0}, Lumeng_bolts/BoltsExecutors;-><init>()V

    sput-object v0, Lumeng_bolts/BoltsExecutors;->INSTANCE:Lumeng_bolts/BoltsExecutors;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lumeng_bolts/BoltsExecutors;->isAndroidRuntime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lumeng_bolts/AndroidExecutors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lumeng_bolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    .line 11
    new-instance v0, Lumeng_bolts/BoltsExecutors$ImmediateExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lumeng_bolts/BoltsExecutors$ImmediateExecutor;-><init>(Lumeng_bolts/BoltsExecutors$1;)V

    iput-object v0, p0, Lumeng_bolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static background()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 22
    sget-object v0, Lumeng_bolts/BoltsExecutors;->INSTANCE:Lumeng_bolts/BoltsExecutors;

    iget-object v0, v0, Lumeng_bolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static immediate()Ljava/util/concurrent/Executor;
    .locals 1

    .line 26
    sget-object v0, Lumeng_bolts/BoltsExecutors;->INSTANCE:Lumeng_bolts/BoltsExecutors;

    iget-object v0, v0, Lumeng_bolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static isAndroidRuntime()Z
    .locals 2

    const-string v0, "java.runtime.name"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0
.end method
