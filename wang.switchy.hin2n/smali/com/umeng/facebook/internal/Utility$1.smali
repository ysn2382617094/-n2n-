.class final Lcom/umeng/facebook/internal/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/umeng/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$callback:Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/umeng/facebook/internal/Utility$1;->val$callback:Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    iput-object p2, p0, Lcom/umeng/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/umeng/facebook/GraphResponse;)V
    .locals 2

    .line 969
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getError()Lcom/umeng/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/umeng/facebook/internal/Utility$1;->val$callback:Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getError()Lcom/umeng/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookRequestError;->getException()Lcom/umeng/facebook/FacebookException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onFailure(Lcom/umeng/facebook/FacebookException;)V

    goto :goto_0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    .line 974
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 972
    invoke-static {v0, v1}, Lcom/umeng/facebook/internal/ProfileInformationCache;->putProfileInformation(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 975
    iget-object v0, p0, Lcom/umeng/facebook/internal/Utility$1;->val$callback:Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
