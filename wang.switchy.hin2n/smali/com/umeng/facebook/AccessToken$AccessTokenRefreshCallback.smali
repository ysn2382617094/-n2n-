.class public interface abstract Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;
.super Ljava/lang/Object;
.source "AccessToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessTokenRefreshCallback"
.end annotation


# virtual methods
.method public abstract OnTokenRefreshFailed(Lcom/umeng/facebook/FacebookException;)V
.end method

.method public abstract OnTokenRefreshed(Lcom/umeng/facebook/AccessToken;)V
.end method
