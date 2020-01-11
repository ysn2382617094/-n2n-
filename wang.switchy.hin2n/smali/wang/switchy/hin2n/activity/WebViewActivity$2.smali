.class Lwang/switchy/hin2n/activity/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/WebViewActivity;->doOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/WebViewActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$100(Lwang/switchy/hin2n/activity/WebViewActivity;)Lcom/wang/avi/AVLoadingIndicatorView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 100
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$100(Lwang/switchy/hin2n/activity/WebViewActivity;)Lcom/wang/avi/AVLoadingIndicatorView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$2;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 123
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 93
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
