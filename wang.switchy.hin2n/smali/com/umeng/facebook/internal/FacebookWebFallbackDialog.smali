.class public Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;
.super Lcom/umeng/facebook/internal/WebDialog;
.source "FacebookWebFallbackDialog.java"


# static fields
.field private static final OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "com.umeng.facebook.internal.FacebookWebFallbackDialog"


# instance fields
.field private waitingForDialogToClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->setExpectedRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->isPageFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->isListenerCalled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    const-string v1, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v1, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog$1;

    invoke-direct {v1, p0}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog$1;-><init>(Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 114
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    return-void
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bridge_args"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bridge_args"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lcom/umeng/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v0, "method_results"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "method_results"

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "{}"

    .line 85
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Lcom/umeng/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    const-string v0, "version"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 97
    invoke-static {}, Lcom/umeng/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v1

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method