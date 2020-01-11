.class Lcom/umeng/qq/handler/UmengQQHandler$8;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler;->fetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/qq/handler/UmengQQHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v0}, Lcom/umeng/qq/handler/UmengQQHandler;->access$500(Lcom/umeng/qq/handler/UmengQQHandler;)Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "screen_name"

    const-string v3, "nickname"

    .line 313
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    const-string v3, "nickname"

    .line 314
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gender"

    .line 315
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    const-string v4, "gender"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/umeng/qq/handler/UmengQQHandler;->getGender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "profile_image_url"

    const-string v3, "figureurl_qq_2"

    .line 316
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iconurl"

    const-string v3, "figureurl_qq_2"

    .line 317
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_yellow_year_vip"

    const-string v3, "is_yellow_year_vip"

    .line 318
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "yellow_vip_level"

    const-string v3, "yellow_vip_level"

    .line 319
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msg"

    const-string v3, "msg"

    .line 320
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "city"

    const-string v3, "city"

    .line 321
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vip"

    const-string v3, "vip"

    .line 322
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "level"

    const-string v3, "level"

    .line 323
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ret"

    const-string v3, "ret"

    .line 324
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "province"

    const-string v3, "province"

    .line 325
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_yellow_vip"

    const-string v3, "is_yellow_vip"

    .line 326
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openid"

    .line 329
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$600(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    .line 330
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$600(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "access_token"

    .line 331
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$100(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expires_in"

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v3}, Lcom/umeng/qq/handler/UmengQQHandler;->access$700(Lcom/umeng/qq/handler/UmengQQHandler;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "accessToken"

    .line 333
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$100(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expiration"

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v3}, Lcom/umeng/qq/handler/UmengQQHandler;->access$700(Lcom/umeng/qq/handler/UmengQQHandler;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unionid"

    .line 335
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$400(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ret"

    .line 338
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$8$1;

    invoke-direct {v0, p0, v1}, Lcom/umeng/qq/handler/UmengQQHandler$8$1;-><init>(Lcom/umeng/qq/handler/UmengQQHandler$8;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 347
    :cond_0
    new-instance v2, Lcom/umeng/qq/handler/UmengQQHandler$8$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler$8$2;-><init>(Lcom/umeng/qq/handler/UmengQQHandler$8;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Lcom/umeng/qq/handler/UmengQQHandler$8$3;

    invoke-direct {v1, p0, v0}, Lcom/umeng/qq/handler/UmengQQHandler$8$3;-><init>(Lcom/umeng/qq/handler/UmengQQHandler$8;Lorg/json/JSONException;)V

    invoke-static {v1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 369
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
