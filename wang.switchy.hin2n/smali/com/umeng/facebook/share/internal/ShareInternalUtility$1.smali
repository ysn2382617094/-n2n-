.class final Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;
.super Lcom/umeng/facebook/share/internal/ResultProcessor;
.source "ShareInternalUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getShareResultProcessor(Lcom/umeng/facebook/FacebookCallback;)Lcom/umeng/facebook/share/internal/ResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/umeng/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 0

    .line 155
    iput-object p2, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/internal/ResultProcessor;-><init>(Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/facebook/internal/AppCall;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method

.method public onError(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/FacebookException;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-static {p1, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/FacebookException;)V

    return-void
.end method

.method public onSuccess(Lcom/umeng/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 159
    invoke-static {p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "post"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "cancel"

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/umeng/facebook/FacebookCallback;)V

    goto :goto_1

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    new-instance p2, Lcom/umeng/facebook/FacebookException;

    const-string v0, "UnknownError"

    invoke-direct {p2, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/FacebookException;)V

    goto :goto_1

    .line 161
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-static {p2, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/umeng/facebook/FacebookCallback;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
