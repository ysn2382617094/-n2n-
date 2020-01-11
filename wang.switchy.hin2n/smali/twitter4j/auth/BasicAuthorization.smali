.class public Ltwitter4j/auth/BasicAuthorization;
.super Ljava/lang/Object;
.source "BasicAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x66fb5faafb5b7207L


# instance fields
.field private final basic:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ltwitter4j/auth/BasicAuthorization;->encodeBasicAuthenticationString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    return-void
.end method

.method private encodeBasicAuthenticationString()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 72
    :cond_0
    instance-of v0, p1, Ltwitter4j/auth/BasicAuthorization;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    check-cast p1, Ltwitter4j/auth/BasicAuthorization;

    .line 76
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p1, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    return-object p1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicAuthorization{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", password=\'**********\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
