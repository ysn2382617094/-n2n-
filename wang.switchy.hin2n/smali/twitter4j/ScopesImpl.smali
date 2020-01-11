.class public Ltwitter4j/ScopesImpl;
.super Ljava/lang/Object;
.source "ScopesImpl.java"

# interfaces
.implements Ltwitter4j/Scopes;


# static fields
.field private static final serialVersionUID:J = -0x577498a7eca74fa3L


# instance fields
.field private final placeIds:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlaceIds()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-object v0
.end method
