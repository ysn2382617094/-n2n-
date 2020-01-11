.class public abstract Lcom/umeng/qq/handler/UmengQBaseHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UmengQBaseHandler.java"


# static fields
.field protected static final FIGUREURL_QQ_2:Ljava/lang/String; = "figureurl_qq_2"

.field protected static final IS_YELLOW_VIP:Ljava/lang/String; = "is_yellow_vip"

.field protected static final IS_YELLOW_YEAR_VIP:Ljava/lang/String; = "is_yellow_year_vip"

.field protected static final LEVEL:Ljava/lang/String; = "level"

.field protected static final MSG:Ljava/lang/String; = "msg"

.field protected static final NICKNAME:Ljava/lang/String; = "nickname"

.field protected static final RET:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String; = "UmengQBaseHandler"

.field protected static final VIP:Ljava/lang/String; = "vip"

.field protected static final YELLOW_VIP_LEVEL:Ljava/lang/String; = "yellow_vip_level"


# instance fields
.field protected VERSION:Ljava/lang/String;

.field public config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

.field protected mAuthListener:Lcom/umeng/socialize/UMAuthListener;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mShareListener:Lcom/umeng/socialize/UMShareListener;

.field protected mTencent:Lcom/umeng/qq/tencent/Tencent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "6.9.2"

    .line 30
    iput-object v1, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->VERSION:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMSSOHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 52
    check-cast p2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    .line 55
    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object p2, p2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/umeng/qq/tencent/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/umeng/qq/tencent/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    .line 57
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQBaseHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_TENCENT_ERROR:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected parseOauthData(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 84
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "auth_time"

    const-string v2, "auth_time"

    const-string v3, ""

    .line 103
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pay_token"

    const-string v2, "pay_token"

    const-string v3, ""

    .line 104
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pf"

    const-string v2, "pf"

    const-string v3, ""

    .line 105
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ret"

    const-string v2, "ret"

    const/4 v3, -0x1

    .line 106
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sendinstall"

    const-string v2, "sendinstall"

    const-string v3, ""

    .line 107
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "page_type"

    const-string v2, "page_type"

    const-string v3, ""

    .line 108
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appid"

    const-string v2, "appid"

    const-string v3, ""

    .line 109
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openid"

    const-string v2, "openid"

    const-string v3, ""

    .line 110
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    const-string v2, "openid"

    const-string v3, ""

    .line 111
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expires_in"

    const-string v2, ""

    .line 112
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "expires_in"

    .line 113
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pfkey"

    const-string v2, "pfkey"

    const-string v3, ""

    .line 116
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "access_token"

    const-string v2, "access_token"

    const-string v3, ""

    .line 117
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accessToken"

    const-string v2, "access_token"

    const-string v3, ""

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
