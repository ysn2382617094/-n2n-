.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"


# static fields
.field private static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"

.field private static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"

.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "twitter4j.configurationFactory"

    const-string v1, "twitter4j.conf.PropertyConfigurationFactory"

    .line 34
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "twitter4j.conf.PropertyConfigurationFactory"

    .line 41
    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/conf/ConfigurationFactory;

    sput-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .line 53
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1

    .line 57
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0, p0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object p0

    return-object p0
.end method
