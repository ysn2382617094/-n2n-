.class public interface abstract Ltwitter4j/api/TweetsResources;
.super Ljava/lang/Object;
.source "TweetsResources.java"


# virtual methods
.method public abstract updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
