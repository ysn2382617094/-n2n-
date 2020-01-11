.class Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/TwitterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/TwitterWebActivity;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/handler/TwitterWebActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;->this$0:Lcom/umeng/socialize/handler/TwitterWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/handler/TwitterWebActivity;Lcom/umeng/socialize/handler/TwitterWebActivity$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;-><init>(Lcom/umeng/socialize/handler/TwitterWebActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "oauth://t4jsample"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "oauth_verifier"

    .line 49
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "oauth_verifier"

    .line 52
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;->this$0:Lcom/umeng/socialize/handler/TwitterWebActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/umeng/socialize/handler/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterWebActivity$MyWebViewClient;->this$0:Lcom/umeng/socialize/handler/TwitterWebActivity;

    invoke-virtual {p1}, Lcom/umeng/socialize/handler/TwitterWebActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 65
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
