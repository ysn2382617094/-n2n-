.class public final Ltwitter4j/RateLimitStatusEvent;
.super Ljava/util/EventObject;
.source "RateLimitStatusEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x34086d57354c712eL


# instance fields
.field private final isAccountRateLimitStatus:Z

.field private final rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object p2, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 35
    iput-boolean p3, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    return-void
.end method
