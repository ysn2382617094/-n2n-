.class Lumeng_bolts/WebViewAppLinkResolver$2;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "Ljava/lang/Void;",
        "Lumeng_bolts/Task<",
        "Lorg/json/JSONArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lumeng_bolts/Capture;

.field final synthetic val$contentType:Lumeng_bolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lumeng_bolts/WebViewAppLinkResolver;Lumeng_bolts/Capture;Landroid/net/Uri;Lumeng_bolts/Capture;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->this$0:Lumeng_bolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$contentType:Lumeng_bolts/Capture;

    iput-object p3, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    iput-object p4, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$content:Lumeng_bolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lumeng_bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lumeng_bolts/WebViewAppLinkResolver$2;->then(Lumeng_bolts/Task;)Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Lumeng_bolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Lumeng_bolts/Task<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-static {}, Lumeng_bolts/Task;->create()Lumeng_bolts/Task$TaskCompletionSource;

    move-result-object p1

    .line 131
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->this$0:Lumeng_bolts/WebViewAppLinkResolver;

    invoke-static {v1}, Lumeng_bolts/WebViewAppLinkResolver;->access$200(Lumeng_bolts/WebViewAppLinkResolver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 134
    new-instance v2, Lumeng_bolts/WebViewAppLinkResolver$2$1;

    invoke-direct {v2, p0}, Lumeng_bolts/WebViewAppLinkResolver$2$1;-><init>(Lumeng_bolts/WebViewAppLinkResolver$2;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    new-instance v2, Lumeng_bolts/WebViewAppLinkResolver$2$2;

    invoke-direct {v2, p0, p1}, Lumeng_bolts/WebViewAppLinkResolver$2$2;-><init>(Lumeng_bolts/WebViewAppLinkResolver$2;Lumeng_bolts/Task$TaskCompletionSource;)V

    const-string v3, "boltsWebViewAppLinkResolverResult"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$contentType:Lumeng_bolts/Capture;

    invoke-virtual {v2}, Lumeng_bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$contentType:Lumeng_bolts/Capture;

    invoke-virtual {v2}, Lumeng_bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 178
    iget-object v1, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lumeng_bolts/WebViewAppLinkResolver$2;->val$content:Lumeng_bolts/Capture;

    .line 179
    invoke-virtual {v2}, Lumeng_bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lumeng_bolts/Task$TaskCompletionSource;->getTask()Lumeng_bolts/Task;

    move-result-object p1

    return-object p1
.end method
