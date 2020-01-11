.class Lcom/umeng/qq/handler/UmengQQHandler$5$1;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler$5;->onComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

.field final synthetic val$response:Ljava/lang/Object;

.field final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler$5;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->val$response:Ljava/lang/Object;

    iput-object p3, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->val$values:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://graph.qq.com/oauth2.0/me?access_token="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    .line 184
    invoke-static {v1}, Lcom/umeng/qq/handler/UmengQQHandler;->access$100(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&unionid=1"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/qq/handler/UmengQQHandler;->access$200(Lcom/umeng/qq/handler/UmengQQHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "callback"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "unionid"

    .line 190
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "openid"

    .line 191
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v3, v3, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v3}, Lcom/umeng/qq/handler/UmengQQHandler;->access$000(Lcom/umeng/qq/handler/UmengQQHandler;)Lcom/umeng/qq/handler/UmengQQPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v3, v3, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v3}, Lcom/umeng/qq/handler/UmengQQHandler;->access$000(Lcom/umeng/qq/handler/UmengQQHandler;)Lcom/umeng/qq/handler/UmengQQPreferences;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/umeng/qq/handler/UmengQQPreferences;->setmOpenid(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$000(Lcom/umeng/qq/handler/UmengQQHandler;)Lcom/umeng/qq/handler/UmengQQPreferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->setUnionid(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v0}, Lcom/umeng/qq/handler/UmengQQHandler;->access$000(Lcom/umeng/qq/handler/UmengQQHandler;)Lcom/umeng/qq/handler/UmengQQPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->commit()V

    :cond_0
    const-string v0, "error_description"

    .line 198
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORINFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->val$response:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->access$300(Lcom/umeng/qq/handler/UmengQQHandler;Lorg/json/JSONObject;)V

    .line 207
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->val$values:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->bundleTomap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "unionid"

    .line 208
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$400(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Lcom/umeng/qq/handler/UmengQQHandler$5$1$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/qq/handler/UmengQQHandler$5$1$1;-><init>(Lcom/umeng/qq/handler/UmengQQHandler$5$1;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 216
    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    if-eqz v1, :cond_2

    const-string v1, "aid"

    .line 217
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "as"

    .line 218
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$5$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$5;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler$5;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v2, v2, Lcom/umeng/qq/handler/UmengQQHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
