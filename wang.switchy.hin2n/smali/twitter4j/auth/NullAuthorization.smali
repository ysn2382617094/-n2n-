.class public Ltwitter4j/auth/NullAuthorization;
.super Ljava/lang/Object;
.source "NullAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final SINGLETON:Ltwitter4j/auth/NullAuthorization;

.field private static final serialVersionUID:J = -0x6aec7b2c6e05cd56L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ltwitter4j/auth/NullAuthorization;

    invoke-direct {v0}, Ltwitter4j/auth/NullAuthorization;-><init>()V

    sput-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/auth/NullAuthorization;
    .locals 1

    .line 37
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 61
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NullAuthentication{SINGLETON}"

    return-object v0
.end method
