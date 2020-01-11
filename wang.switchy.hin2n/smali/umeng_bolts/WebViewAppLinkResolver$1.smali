.class Lumeng_bolts/WebViewAppLinkResolver$1;
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
        "Lorg/json/JSONArray;",
        "Lumeng_bolts/AppLink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lumeng_bolts/WebViewAppLinkResolver;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lumeng_bolts/WebViewAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lumeng_bolts/WebViewAppLinkResolver$1;->this$0:Lumeng_bolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lumeng_bolts/WebViewAppLinkResolver$1;->val$url:Landroid/net/Uri;

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

    .line 185
    invoke-virtual {p0, p1}, Lumeng_bolts/WebViewAppLinkResolver$1;->then(Lumeng_bolts/Task;)Lumeng_bolts/AppLink;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Lumeng_bolts/AppLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lumeng_bolts/AppLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lumeng_bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lumeng_bolts/WebViewAppLinkResolver;->access$000(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lumeng_bolts/WebViewAppLinkResolver$1;->val$url:Landroid/net/Uri;

    invoke-static {p1, v0}, Lumeng_bolts/WebViewAppLinkResolver;->access$100(Ljava/util/Map;Landroid/net/Uri;)Lumeng_bolts/AppLink;

    move-result-object p1

    return-object p1
.end method
