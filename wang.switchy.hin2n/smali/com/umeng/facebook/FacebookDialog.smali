.class public interface abstract Lcom/umeng/facebook/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canShow(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract show(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation
.end method
