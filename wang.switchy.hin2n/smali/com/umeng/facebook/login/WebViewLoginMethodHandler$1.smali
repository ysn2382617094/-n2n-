.class Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;
.super Ljava/lang/Object;
.source "WebViewLoginMethodHandler.java"

# interfaces
.implements Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->tryAuthorize(Lcom/umeng/facebook/login/LoginClient$Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/login/WebViewLoginMethodHandler;

.field final synthetic val$request:Lcom/umeng/facebook/login/LoginClient$Request;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/login/WebViewLoginMethodHandler;Lcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;->this$0:Lcom/umeng/facebook/login/WebViewLoginMethodHandler;

    iput-object p2, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;->val$request:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;->this$0:Lcom/umeng/facebook/login/WebViewLoginMethodHandler;

    iget-object v1, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;->val$request:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1, p2}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->onWebDialogComplete(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    return-void
.end method
