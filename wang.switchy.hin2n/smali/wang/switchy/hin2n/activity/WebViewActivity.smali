.class public Lwang/switchy/hin2n/activity/WebViewActivity;
.super Lwang/switchy/hin2n/activity/BaseActivity;
.source "WebViewActivity.java"


# static fields
.field public static final ABOUT_URL:Ljava/lang/String; = "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=59"

.field public static final CONTACT_URL:Ljava/lang/String; = "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=59"

.field public static final FEEDBACK_URL:Ljava/lang/String; = "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=53"

.field public static final SHARE_URL:Ljava/lang/String; = "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=59"

.field public static final TYPE_WEB_VIEW_ABOUT:I = 0x0

.field public static final TYPE_WEB_VIEW_CONTACT:I = 0x3

.field public static final TYPE_WEB_VIEW_FEEDBACK:I = 0x1

.field public static final TYPE_WEB_VIEW_SHARE:I = 0x2

.field public static final WEB_VIEW_TYPE:Ljava/lang/String; = "web_view_type"


# instance fields
.field private mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

.field private mLoadingView:Lcom/wang/avi/AVLoadingIndicatorView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 30
    iget-object p0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lwang/switchy/hin2n/activity/WebViewActivity;)Lcom/wang/avi/AVLoadingIndicatorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mLoadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    return-object p0
.end method


# virtual methods
.method protected createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
    .locals 3

    .line 50
    new-instance v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mContext:Landroid/app/Activity;

    const-string v2, "\u5173\u4e8e\u4e0e\u6cd5\u5f8b"

    invoke-direct {v0, v1, v2}, Lwang/switchy/hin2n/template/CommonTitleTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    .line 52
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v0, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v0, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v0, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    new-instance v1, Lwang/switchy/hin2n/activity/WebViewActivity$1;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/WebViewActivity$1;-><init>(Lwang/switchy/hin2n/activity/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    return-object v0
.end method

.method protected doOnCreate(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f09007b

    .line 70
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mLoadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    const p1, 0x7f090129

    .line 72
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 74
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v0, "utf-8"

    .line 88
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lwang/switchy/hin2n/activity/WebViewActivity$2;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/WebViewActivity$2;-><init>(Lwang/switchy/hin2n/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "web_view_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const-string v0, "Contact"

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "https://github.com/switch-iot/hin2n/wiki/Feedback-&-Contact-Us"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const-string v0, "Share"

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=59"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const-string v0, "\u53cd\u9988\u4e0e\u5efa\u8bae<\u4e16\u7eaa\u661f\u8000\u5b98\u65b9\u8bba\u575b>"

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=53"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mCommonTitleTemplate:Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const-string v0, "\u5173\u4e8e\u4e0e\u6cd5\u5f8b"

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "http://www.shijixy.top/forum.php?mod=forumdisplay&fid=59"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f0b001b

    return v0
.end method

.method protected onDestroy()V
    .locals 7

    .line 169
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 173
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 177
    :cond_0
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lwang/switchy/hin2n/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 163
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onPause()V

    .line 164
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 157
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lwang/switchy/hin2n/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method
