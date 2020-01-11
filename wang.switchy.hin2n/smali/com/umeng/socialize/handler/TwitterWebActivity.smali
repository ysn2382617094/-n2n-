.class public Lcom/umeng/socialize/handler/TwitterWebActivity;
.super Landroid/app/Activity;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity;->wv:Landroid/webkit/WebView;

    .line 26
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity;->wv:Landroid/webkit/WebView;

    new-instance v0, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;-><init>(Lcom/umeng/socialize/handler/TwitterWebActivity;Lcom/umeng/socialize/handler/TwitterWebActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "auth_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/TwitterWebActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
