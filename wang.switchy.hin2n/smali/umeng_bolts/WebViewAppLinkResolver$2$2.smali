.class Lumeng_bolts/WebViewAppLinkResolver$2$2;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/WebViewAppLinkResolver$2;->then(Lumeng_bolts/Task;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lumeng_bolts/WebViewAppLinkResolver$2;

.field final synthetic val$tcs:Lumeng_bolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lumeng_bolts/WebViewAppLinkResolver$2;Lumeng_bolts/Task$TaskCompletionSource;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lumeng_bolts/WebViewAppLinkResolver$2$2;->this$1:Lumeng_bolts/WebViewAppLinkResolver$2;

    iput-object p2, p0, Lumeng_bolts/WebViewAppLinkResolver$2$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lumeng_bolts/WebViewAppLinkResolver$2$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lumeng_bolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    iget-object v0, p0, Lumeng_bolts/WebViewAppLinkResolver$2$2;->val$tcs:Lumeng_bolts/Task$TaskCompletionSource;

    invoke-virtual {v0, p1}, Lumeng_bolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
