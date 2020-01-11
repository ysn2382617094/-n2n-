.class Lcom/umeng/facebook/GraphRequest$1;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/umeng/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/GraphRequest;->setCallback(Lcom/umeng/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/GraphRequest;

.field final synthetic val$callback:Lcom/umeng/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/GraphRequest;Lcom/umeng/facebook/GraphRequest$Callback;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest$1;->this$0:Lcom/umeng/facebook/GraphRequest;

    iput-object p2, p0, Lcom/umeng/facebook/GraphRequest$1;->val$callback:Lcom/umeng/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/umeng/facebook/GraphResponse;)V
    .locals 7

    .line 912
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "__debug__"

    .line 914
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "messages"

    .line 916
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    const/4 v2, 0x0

    .line 918
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 919
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "message"

    .line 921
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v1

    :goto_3
    if-eqz v3, :cond_3

    const-string v5, "type"

    .line 924
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_3
    move-object v5, v1

    :goto_4
    if-eqz v3, :cond_4

    const-string v6, "link"

    .line 927
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 930
    sget-object v3, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 941
    :cond_6
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$1;->val$callback:Lcom/umeng/facebook/GraphRequest$Callback;

    if-eqz v0, :cond_7

    .line 942
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$1;->val$callback:Lcom/umeng/facebook/GraphRequest$Callback;

    invoke-interface {v0, p1}, Lcom/umeng/facebook/GraphRequest$Callback;->onCompleted(Lcom/umeng/facebook/GraphResponse;)V

    :cond_7
    return-void
.end method
