.class public Lcom/umeng/socialize/handler/UMGooglePlusHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMGooglePlusHandler.java"


# static fields
.field private static final PackageName:Ljava/lang/String; = "com.google.android.apps.plus"

.field private static final ShareTarget:Ljava/lang/String; = "com.google.android.libraries.social.gateway.GatewayActivity"


# instance fields
.field protected VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    const-string v0, "6.9.2"

    .line 34
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->VERSION:Ljava/lang/String;

    return-void
.end method

.method private static getMsgIntent(Ljava/lang/String;Lcom/umeng/socialize/media/UMImage;)Landroid/content/Intent;
    .locals 2

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*;text/plain"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.TEXT"

    .line 134
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 135
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "android.intent.extra.STREAM"

    .line 139
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z
    .locals 1

    const-string p1, "com.google.android.apps.plus"

    .line 70
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isInstall()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z

    move-result v0

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMSSOHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "com.google.android.apps.plus"

    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->openApplicationMarket(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    new-instance p1, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;

    invoke-direct {p1, p0, p2}, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;-><init>(Lcom/umeng/socialize/handler/UMGooglePlusHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    new-instance v0, Lcom/umeng/socialize/media/GooglePlusShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    invoke-virtual {p0, v0, p2}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->shareTo(Lcom/umeng/socialize/media/GooglePlusShareContent;Lcom/umeng/socialize/UMShareListener;)Z

    move-result p1

    return p1
.end method

.method public shareTo(Lcom/umeng/socialize/media/GooglePlusShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 5

    .line 85
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getText()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getmStyle()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getmStyle()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getmStyle()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getBaseMediaObject()Lcom/umeng/socialize/media/BaseMediaObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/BaseMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/socialize/media/GooglePlusShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->getMsgIntent(Ljava/lang/String;Lcom/umeng/socialize/media/UMImage;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.google.android.apps.plus"

    const-string v1, "com.google.android.libraries.social.gateway.GatewayActivity"

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    :cond_4
    new-instance p1, Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;

    invoke-direct {p1, p0, p2}, Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;-><init>(Lcom/umeng/socialize/handler/UMGooglePlusHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/handler/UMGooglePlusHandler$3;-><init>(Lcom/umeng/socialize/handler/UMGooglePlusHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
