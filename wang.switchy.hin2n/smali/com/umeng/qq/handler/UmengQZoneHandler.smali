.class public Lcom/umeng/qq/handler/UmengQZoneHandler;
.super Lcom/umeng/qq/handler/UmengQBaseHandler;
.source "UmengQZoneHandler.java"


# instance fields
.field private qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQBaseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    const/16 v0, 0x2778

    return v0
.end method

.method public getmShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;
    .locals 1

    .line 120
    new-instance v0, Lcom/umeng/qq/handler/UmengQZoneHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQZoneHandler$4;-><init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;)V

    return-object v0
.end method

.method public isInstall()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/tencent/Tencent;->isSupportSSOLogin(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2778

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneHandler;->getmShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/umeng/qq/tencent/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/umeng/qq/handler/UmengQBaseHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 32
    new-instance p2, Lcom/umeng/qq/handler/UmengQQPreferences;

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/umeng/qq/handler/UmengQQPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 3

    .line 36
    new-instance v0, Lcom/umeng/qq/handler/UmengQZoneShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    .line 37
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    invoke-virtual {p1}, Lcom/umeng/socialize/UMShareConfig;->getCompressListener()Lcom/umeng/socialize/interfaces/CompressListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->setCompressListener(Lcom/umeng/socialize/interfaces/CompressListener;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 41
    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 46
    new-instance p1, Lcom/umeng/qq/handler/UmengQZoneHandler$1;

    invoke-direct {p1, p0, p2}, Lcom/umeng/qq/handler/UmengQZoneHandler$1;-><init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return v1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneHandler;->isInstall()Z

    move-result p1

    if-nez p1, :cond_4

    .line 56
    sget-boolean p1, Lcom/umeng/socialize/Config;->isJumptoAppStore:Z

    if-eqz p1, :cond_3

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "https://log.umsns.com/link/qq/download/"

    .line 58
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    :cond_3
    new-instance p1, Lcom/umeng/qq/handler/UmengQZoneHandler$2;

    invoke-direct {p1, p0, p2}, Lcom/umeng/qq/handler/UmengQZoneHandler$2;-><init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneHandler;->getShareConfig()Lcom/umeng/socialize/UMShareConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/socialize/UMShareConfig;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 73
    new-instance p1, Lcom/umeng/qq/handler/UmengQZoneHandler$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/umeng/qq/handler/UmengQZoneHandler$3;-><init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return v1

    .line 83
    :cond_5
    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_6

    .line 84
    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p0, v2}, Lcom/umeng/qq/handler/UmengQZoneHandler;->getmShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/umeng/qq/tencent/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V

    :cond_6
    return v1
.end method
