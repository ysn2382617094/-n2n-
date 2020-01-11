.class public Lcom/umeng/facebook/CallbackManager$Factory;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/umeng/facebook/CallbackManager;
    .locals 1

    .line 46
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl;-><init>()V

    return-object v0
.end method
