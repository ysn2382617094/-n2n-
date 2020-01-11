.class public Lcom/umeng/socialize/handler/TwitterHandler;
.super Lcom/umeng/socialize/handler/UMAPIShareHandler;
.source "TwitterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;
    }
.end annotation


# static fields
.field private static final ACCESSTOKENSECRET:Ljava/lang/String; = "access_token_secret"

.field private static final DESCROPTION:Ljava/lang/String; = "descroption"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final PackageName:Ljava/lang/String; = "com.twitter.android"

.field static final TWITTER_CALLBACK_URL:Ljava/lang/String; = "oauth://t4jsample"

.field static final URL_TWITTER_AUTH:Ljava/lang/String; = "auth_url"

.field static final URL_TWITTER_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field static final URL_TWITTER_OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field private static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected VERSION:Ljava/lang/String;

.field private config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

.field private mTwitter:Ltwitter4j/Twitter;

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field private twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

.field private umAuthListener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;-><init>()V

    const-string v0, "6.9.2"

    .line 56
    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->VERSION:Ljava/lang/String;

    return-void
.end method

.method private InitializeTwitter()V
    .locals 2

    .line 283
    new-instance v0, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v0}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v1, v1, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 285
    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v1, v1, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 286
    invoke-virtual {v0}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v0

    .line 287
    new-instance v1, Ltwitter4j/TwitterFactory;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v1}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/auth/RequestToken;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/Twitter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/handler/TwitterPreferences;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    return-object p0
.end method

.method static synthetic access$300(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    return-object p0
.end method

.method static synthetic access$400(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/UMAuthListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->umAuthListener:Lcom/umeng/socialize/UMAuthListener;

    return-object p0
.end method

.method private isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z
    .locals 1

    const-string p1, "com.twitter.android"

    .line 275
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/TwitterHandler;->getContext()Landroid/content/Context;

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

.method private loginToTwitter()V
    .locals 3

    .line 294
    invoke-direct {p0}, Lcom/umeng/socialize/handler/TwitterHandler;->InitializeTwitter()V

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 306
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    const-string v1, "oauth://t4jsample"

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/umeng/socialize/handler/TwitterWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "auth_url"

    .line 311
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v2}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0xfad1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private logoutFromTwitter()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/TwitterPreferences;->delete()V

    return-void
.end method

.method private updateStatus(Lcom/umeng/socialize/media/TwitterShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 5

    .line 343
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v1

    .line 345
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v2

    .line 347
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getmStyle()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getmStyle()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getmStyle()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 350
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getBaseMediaObject()Lcom/umeng/socialize/media/BaseMediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_3
    :try_start_0
    new-instance v1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 360
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 361
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 364
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    const-string v3, "token"

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/handler/TwitterPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    const-string v4, "tokenSecret"

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/handler/TwitterPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    new-instance v4, Ltwitter4j/auth/AccessToken;

    invoke-direct {v4, v2, v3}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v2, Ltwitter4j/TwitterFactory;

    invoke-virtual {v1}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v1

    invoke-direct {v2, v1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v2, v4}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/AccessToken;)Ltwitter4j/Twitter;

    move-result-object v1

    .line 371
    iget-boolean v2, p1, Lcom/umeng/socialize/media/TwitterShareContent;->isHasPic:Z

    if-eqz v2, :cond_4

    .line 372
    new-instance v2, Ltwitter4j/StatusUpdate;

    invoke-direct {v2, v0}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/umeng/socialize/media/TwitterShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 374
    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    .line 376
    new-instance p1, Lcom/umeng/socialize/handler/TwitterHandler$2;

    invoke-direct {p1, p0, p2}, Lcom/umeng/socialize/handler/TwitterHandler$2;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 384
    :cond_4
    invoke-interface {v1, v0}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    .line 386
    new-instance p1, Lcom/umeng/socialize/handler/TwitterHandler$3;

    invoke-direct {p1, p0, p2}, Lcom/umeng/socialize/handler/TwitterHandler$3;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    new-instance v0, Lcom/umeng/socialize/handler/TwitterHandler$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/handler/TwitterHandler$5;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 400
    new-instance v0, Lcom/umeng/socialize/handler/TwitterHandler$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/handler/TwitterHandler$4;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;Ltwitter4j/TwitterException;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public authorize(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->umAuthListener:Lcom/umeng/socialize/UMAuthListener;

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/umeng/socialize/handler/TwitterHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/handler/TwitterHandler$1;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/handler/TwitterHandler;->loginToTwitter()V

    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 3

    if-eqz p3, :cond_0

    const-string p1, "oauth_verifier"

    .line 102
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "oauth_verifier"

    .line 104
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;

    invoke-direct {p3, p0, p1}, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler;->umAuthListener:Lcom/umeng/socialize/UMAuthListener;

    sget-object p2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 p3, 0x0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/socialize/bean/UmengErrorCode;->UnKnowCode:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "no data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public deleteAuth()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/TwitterPreferences;->delete()V

    :cond_0
    return-void
.end method

.method public deleteAuth(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/umeng/socialize/handler/TwitterHandler;->logoutFromTwitter()V

    .line 422
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/TwitterPreferences;->delete()V

    .line 425
    :cond_0
    new-instance v0, Lcom/umeng/socialize/handler/TwitterHandler$6;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/handler/TwitterHandler$6;-><init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEditable(Lcom/umeng/socialize/ShareContent;)Landroid/os/Bundle;
    .locals 4

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media"

    .line 120
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARE_TO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/socialize/bean/PlatformName;->TWITTER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt"

    .line 122
    iget-object v2, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_0

    .line 127
    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "pic"

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_0
    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_1

    const-string v1, "pic"

    const-string v2, "music"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_2

    const-string v1, "pic"

    const-string v2, "video"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMWeb;

    if-eqz v1, :cond_3

    const-string v1, "pic"

    const-string v2, "web"

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p1, "at"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "location"

    .line 144
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .line 97
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getPlatformInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/TwitterHandler;->authorize(Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method public getRequestCode()I
    .locals 1

    const v0, 0xfad1

    return v0
.end method

.method public getResult(Lcom/umeng/socialize/ShareContent;Landroid/os/Bundle;)Lcom/umeng/socialize/ShareContent;
    .locals 1

    const-string v0, "txt"

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    const-string v0, "pic"

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 152
    iput-object p2, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    :cond_0
    return-object p1
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/TwitterPreferences;->getmUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorize()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/TwitterPreferences;->isAuth()Z

    move-result v0

    return v0
.end method

.method public isInstall()Z
    .locals 2

    const-string v0, "com.twitter.android"

    .line 265
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/TwitterHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

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

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 77
    move-object v0, p2

    check-cast v0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->mTwitter:Ltwitter4j/Twitter;

    .line 81
    :cond_0
    new-instance v0, Lcom/umeng/socialize/handler/TwitterPreferences;

    invoke-interface {p2}, Lcom/umeng/socialize/PlatformConfig$Platform;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/umeng/socialize/handler/TwitterPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler;->twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

    return-void
.end method

.method public sendShareRequest(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 1

    .line 259
    new-instance v0, Lcom/umeng/socialize/media/TwitterShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/media/TwitterShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    invoke-virtual {p0, v0, p2}, Lcom/umeng/socialize/handler/TwitterHandler;->shareTo(Lcom/umeng/socialize/media/TwitterShareContent;Lcom/umeng/socialize/UMShareListener;)Z

    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z

    move-result p1

    return p1
.end method

.method public shareTo(Lcom/umeng/socialize/media/TwitterShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 0

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/handler/TwitterHandler;->updateStatus(Lcom/umeng/socialize/media/TwitterShareContent;Lcom/umeng/socialize/UMShareListener;)V

    const/4 p1, 0x1

    return p1
.end method
