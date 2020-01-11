.class public abstract Lcom/umeng/facebook/share/internal/ResultProcessor;
.super Ljava/lang/Object;
.source "ResultProcessor.java"


# instance fields
.field private appCallback:Lcom/umeng/facebook/FacebookCallback;


# direct methods
.method public constructor <init>(Lcom/umeng/facebook/FacebookCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/umeng/facebook/share/internal/ResultProcessor;->appCallback:Lcom/umeng/facebook/FacebookCallback;

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/facebook/internal/AppCall;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ResultProcessor;->appCallback:Lcom/umeng/facebook/FacebookCallback;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ResultProcessor;->appCallback:Lcom/umeng/facebook/FacebookCallback;

    invoke-interface {p1}, Lcom/umeng/facebook/FacebookCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/FacebookException;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ResultProcessor;->appCallback:Lcom/umeng/facebook/FacebookCallback;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ResultProcessor;->appCallback:Lcom/umeng/facebook/FacebookCallback;

    invoke-interface {p1, p2}, Lcom/umeng/facebook/FacebookCallback;->onError(Lcom/umeng/facebook/FacebookException;)V

    :cond_0
    return-void
.end method

.method public abstract onSuccess(Lcom/umeng/facebook/internal/AppCall;Landroid/os/Bundle;)V
.end method
