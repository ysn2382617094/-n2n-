.class public interface abstract Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphMeRequestWithCacheCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/umeng/facebook/FacebookException;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
