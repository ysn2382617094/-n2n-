.class public Lcom/umeng/qq/tencent/BaseApi;
.super Ljava/lang/Object;
.source "BaseApi.java"


# static fields
.field public static businessId:Ljava/lang/String;

.field public static installChannel:Ljava/lang/String;

.field public static isOEM:Z

.field public static registerChannel:Ljava/lang/String;


# instance fields
.field protected a:Lcom/umeng/qq/tencent/Info;

.field protected b:Lcom/umeng/qq/tencent/QQToken;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/umeng/qq/tencent/Info;Lcom/umeng/qq/tencent/QQToken;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/umeng/qq/tencent/BaseApi;->a:Lcom/umeng/qq/tencent/Info;

    .line 25
    iput-object p2, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/qq/tencent/QQToken;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    check-cast v0, Lcom/umeng/qq/tencent/Info;

    invoke-direct {p0, v0, p1}, Lcom/umeng/qq/tencent/BaseApi;-><init>(Lcom/umeng/qq/tencent/Info;Lcom/umeng/qq/tencent/QQToken;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "is_login"

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "openSDK_LOG.AssistActivity.ExtraIntent"

    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/os/Bundle;
    .locals 4

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "format"

    const-string v2, "json"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_os"

    .line 72
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_machine"

    .line 73
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status_version"

    .line 74
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkv"

    const-string v2, "3.1.0.lite"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkp"

    const-string v2, "a"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v1}, Lcom/umeng/qq/tencent/QQToken;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "access_token"

    .line 78
    iget-object v2, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v2}, Lcom/umeng/qq/tencent/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_consumer_key"

    .line 79
    iget-object v2, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v2}, Lcom/umeng/qq/tencent/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openid"

    .line 80
    iget-object v2, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v2}, Lcom/umeng/qq/tencent/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid_for_getting_config"

    .line 81
    iget-object v2, p0, Lcom/umeng/qq/tencent/BaseApi;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v2}, Lcom/umeng/qq/tencent/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    sget-boolean v2, Lcom/umeng/qq/tencent/BaseApi;->isOEM:Z

    if-eqz v2, :cond_1

    const-string v1, "pf"

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desktop_m_qq-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/BaseApi;->installChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/BaseApi;->registerChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/BaseApi;->businessId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    .line 88
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pf"

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected a(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 3

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "is_qq_mobile_share"

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p4, "openSDK_LOG.AssistActivity.ExtraIntent"

    .line 49
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "key_request_code"

    .line 34
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/umeng/qq/tencent/BaseApi;->a(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/qq/tencent/Wifig;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/qq/tencent/JsonUtil;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.tencent.minihd.qq"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/qq/tencent/Wifig;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.tencent.mobileqq"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/qq/tencent/Wifig;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.tencent.tim"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/umeng/qq/tencent/Wifig;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    return-object v0
.end method
