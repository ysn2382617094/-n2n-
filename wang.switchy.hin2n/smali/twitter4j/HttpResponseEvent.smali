.class public final Ltwitter4j/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private final request:Ltwitter4j/HttpRequest;

.field private final response:Ltwitter4j/HttpResponse;

.field private final twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    .line 33
    iput-object p2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    .line 34
    iput-object p3, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 73
    :cond_1
    check-cast p1, Ltwitter4j/HttpResponseEvent;

    .line 75
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    iget-object v3, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v2, v3}, Ltwitter4j/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 77
    :cond_3
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    iget-object p1, p1, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    iget-object p1, p1, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getRequest()Ltwitter4j/HttpRequest;
    .locals 1

    .line 43
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/HttpResponse;
    .locals 1

    .line 52
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    return-object v0
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .locals 1

    .line 61
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_1

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 65
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
