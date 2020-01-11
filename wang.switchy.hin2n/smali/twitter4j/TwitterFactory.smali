.class public Ltwitter4j/TwitterFactory;
.super Ljava/lang/Object;
.source "TwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

.field private static final SINGLETON:Ltwitter4j/Twitter;

.field private static final TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ltwitter4j/Twitter;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7d3ac09ed45ed66L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.appengine.api.urlfetch.URLFetchService"

    .line 49
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "twitter4j.AppEngineTwitterImpl"

    .line 59
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "twitter4j.AppEngineTwitterImpl"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_0
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_1

    const-string v2, "twitter4j.TwitterImpl"

    .line 70
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    .line 71
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ltwitter4j/conf/Configuration;

    aput-object v5, v4, v1

    const-class v5, Ltwitter4j/auth/Authorization;

    aput-object v5, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 77
    sput-object v2, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 80
    :try_start_3
    sget-object v2, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Twitter;

    sput-object v0, Ltwitter4j/TwitterFactory;->SINGLETON:Ltwitter4j/Twitter;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_4
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_6
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 107
    iput-object p1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "configuration cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSingleton()Ltwitter4j/Twitter;
    .locals 1

    .line 167
    sget-object v0, Ltwitter4j/TwitterFactory;->SINGLETON:Ltwitter4j/Twitter;

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Twitter;
    .locals 1

    .line 125
    iget-object v0, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/auth/AccessToken;)Ltwitter4j/Twitter;
    .locals 2

    .line 138
    iget-object v0, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Consumer key and Consumer secret not supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    :goto_0
    new-instance v0, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 144
    invoke-virtual {v0, p1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 145
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;
    .locals 4

    .line 150
    :try_start_0
    sget-object v0, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltwitter4j/Twitter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 154
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
