.class interface abstract Ltwitter4j/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createStatus(Ltwitter4j/HttpResponse;)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract createUser(Ltwitter4j/HttpResponse;)Ltwitter4j/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
