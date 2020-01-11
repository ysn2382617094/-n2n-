.class public Lcom/umeng/qq/tencent/Tencent;
.super Ljava/lang/Object;
.source "Tencent.java"


# static fields
.field private static tencent:Lcom/umeng/qq/tencent/Tencent;


# instance fields
.field private info:Lcom/umeng/qq/tencent/Info;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1, p2}, Lcom/umeng/qq/tencent/Info;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/umeng/qq/tencent/Info;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    return-void
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/umeng/qq/tencent/Tencent;
    .locals 2

    const-class v0, Lcom/umeng/qq/tencent/Tencent;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/umeng/qq/tencent/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/umeng/qq/tencent/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v1}, Lcom/umeng/qq/tencent/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    sget-object v1, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v1}, Lcom/umeng/qq/tencent/Tencent;->logout()V

    .line 26
    new-instance v1, Lcom/umeng/qq/tencent/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/umeng/qq/tencent/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    .line 30
    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    throw p0
.end method

.method public static handleResultData(Landroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/umeng/qq/tencent/UIListenerManager;->getInstance()Lcom/umeng/qq/tencent/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/umeng/qq/tencent/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)V

    return-void
.end method

.method public static onActivityResultData(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/umeng/qq/tencent/UIListenerManager;->getInstance()Lcom/umeng/qq/tencent/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/qq/tencent/UIListenerManager;->onActivityResult(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQQToken()Lcom/umeng/qq/tencent/QQToken;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    return-object v0
.end method

.method public isSupportSSOLogin(Landroid/app/Activity;)Z
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/umeng/qq/tencent/JsonUtil;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.minihd.qq"

    invoke-static {v0, p1}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.tencent.tim"

    .line 73
    invoke-static {v0, p1}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "com.tencent.mobileqq"

    .line 77
    invoke-static {v0, p1}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/umeng/qq/tencent/Wifig;->b(Landroid/content/Context;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/qq/tencent/Info;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;)I

    move-result p1

    return p1
.end method

.method public logout()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/qq/tencent/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/qq/tencent/QQToken;->setOpenId(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/umeng/qq/tencent/Tencent;->tencent:Lcom/umeng/qq/tencent/Tencent;

    .line 89
    iput-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/qq/tencent/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/qq/tencent/QQToken;->setOpenId(Ljava/lang/String;)V

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/umeng/qq/tencent/QQShare;

    iget-object v1, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v1}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/umeng/qq/tencent/QQShare;-><init>(Landroid/content/Context;Lcom/umeng/qq/tencent/QQToken;)V

    .line 36
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/qq/tencent/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V

    :cond_0
    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/umeng/qq/tencent/QzoneShare;

    iget-object v1, p0, Lcom/umeng/qq/tencent/Tencent;->info:Lcom/umeng/qq/tencent/Info;

    invoke-virtual {v1}, Lcom/umeng/qq/tencent/Info;->getQqToken()Lcom/umeng/qq/tencent/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/umeng/qq/tencent/QzoneShare;-><init>(Landroid/content/Context;Lcom/umeng/qq/tencent/QQToken;)V

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/qq/tencent/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V

    :cond_0
    return-void
.end method
