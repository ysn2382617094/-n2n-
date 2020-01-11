.class public Lcom/umeng/socialize/handler/UMFacebookHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMFacebookHandler.java"


# static fields
.field private static final LINKURI:Ljava/lang/String; = "linkUri"

.field private static final PROFILEPICTUREURI:Ljava/lang/String; = "profilePictureUri"


# instance fields
.field private PackageName:Ljava/lang/String;

.field protected VERSION:Ljava/lang/String;

.field private loginManager:Lcom/umeng/facebook/login/LoginManager;

.field private mCallbackManager:Lcom/umeng/facebook/CallbackManager;

.field private platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    const-string v0, "6.9.2"

    .line 48
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->VERSION:Ljava/lang/String;

    const-string v0, "com.facebook.katana"

    .line 52
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->PackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/facebook/login/LoginResult;)Ljava/util/Map;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->parseAuthData(Lcom/umeng/facebook/login/LoginResult;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/facebook/Profile;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler;->parseUserInfoAndCallback(Lcom/umeng/facebook/Profile;Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/facebook/AccessToken;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler;->fetchUserInfo(Lcom/umeng/facebook/AccessToken;Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/umeng/socialize/handler/UMFacebookHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object p0
.end method

.method private fetchUserInfo(Lcom/umeng/facebook/AccessToken;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler$3;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    return-void
.end method

.method private isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->PackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getContext()Landroid/content/Context;

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

.method private parseAuthData(Lcom/umeng/facebook/login/LoginResult;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/login/LoginResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginResult;->getAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "uid"

    .line 415
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "access_token"

    .line 416
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accessToken"

    .line 417
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 418
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "expires_in"

    .line 420
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expiration"

    .line 421
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private parseUserInfoAndCallback(Lcom/umeng/facebook/Profile;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 4

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 140
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 141
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "first_name"

    .line 142
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_name"

    .line 143
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "linkUri"

    .line 144
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getLinkUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "profilePictureUri"

    const/16 v2, 0xc8

    .line 145
    invoke-virtual {p1, v2, v2}, Lcom/umeng/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iconurl"

    .line 146
    invoke-virtual {p1, v2, v2}, Lcom/umeng/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "middle_name"

    .line 147
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 148
    invoke-virtual {p1}, Lcom/umeng/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "accessToken"

    .line 151
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expiration"

    .line 152
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    new-instance p1, Lcom/umeng/socialize/handler/UMFacebookHandler$2;

    invoke-direct {p1, p0, p2, v0}, Lcom/umeng/socialize/handler/UMFacebookHandler$2;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public authorize(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getLoginManager()Lcom/umeng/facebook/login/LoginManager;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getShareConfig()Lcom/umeng/socialize/UMShareConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/UMShareConfig;->isFacebookAuthWithWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/login/LoginManager;->setLoginBehavior(Lcom/umeng/facebook/login/LoginBehavior;)Lcom/umeng/facebook/login/LoginManager;

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/umeng/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/login/LoginManager;->setLoginBehavior(Lcom/umeng/facebook/login/LoginBehavior;)Lcom/umeng/facebook/login/LoginManager;

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    new-instance v2, Lcom/umeng/socialize/handler/UMFacebookHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler$1;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/facebook/login/LoginManager;->registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V

    .line 122
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginManager;->logOut()V

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 126
    sget-boolean p1, Lcom/umeng/socialize/Config;->isFacebookRead:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "public_profile"

    aput-object v4, v3, v2

    const-string v2, "user_friends"

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/umeng/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "publish_actions"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/umeng/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected createFetchUserInfoListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;
    .locals 1

    .line 221
    new-instance v0, Lcom/umeng/socialize/handler/UMFacebookHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler$4;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V

    return-object v0
.end method

.method public deleteAuth(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getLoginManager()Lcom/umeng/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->loginManager:Lcom/umeng/facebook/login/LoginManager;

    .line 266
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->loginManager:Lcom/umeng/facebook/login/LoginManager;

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginManager;->logOut()V

    .line 267
    new-instance v0, Lcom/umeng/socialize/handler/UMFacebookHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler$5;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method getLoginManager()Lcom/umeng/facebook/login/LoginManager;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->loginManager:Lcom/umeng/facebook/login/LoginManager;

    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/umeng/facebook/login/LoginManager;->getInstance()Lcom/umeng/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->loginManager:Lcom/umeng/facebook/login/LoginManager;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->loginManager:Lcom/umeng/facebook/login/LoginManager;

    return-object v0
.end method

.method public getPlatformInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 2

    .line 168
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-direct {p0, v0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->fetchUserInfo(Lcom/umeng/facebook/AccessToken;Lcom/umeng/socialize/UMAuthListener;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->createFetchUserInfoListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->authorize(Lcom/umeng/socialize/UMAuthListener;)V

    :goto_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    const v0, 0xface

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorize()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInstall()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->PackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getContext()Landroid/content/Context;

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
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMSSOHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 58
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 59
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    if-nez p1, :cond_0

    .line 60
    invoke-static {}, Lcom/umeng/facebook/CallbackManager$Factory;->create()Lcom/umeng/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    .line 63
    :cond_0
    invoke-interface {p2}, Lcom/umeng/socialize/PlatformConfig$Platform;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-void
.end method

.method public release()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;->release()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->isInstall(Lcom/umeng/socialize/PlatformConfig$Platform;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler$6;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->authorize(Lcom/umeng/socialize/UMAuthListener;)V

    return v1

    .line 348
    :cond_1
    new-instance v0, Lcom/umeng/facebook/media/FacebookShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/media/FacebookShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    invoke-virtual {p0, v0, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler;->shareTo(Lcom/umeng/facebook/media/FacebookShareContent;Lcom/umeng/socialize/UMShareListener;)Z

    move-result p1

    return p1
.end method

.method public shareTo(Lcom/umeng/facebook/media/FacebookShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 3

    .line 352
    invoke-virtual {p1}, Lcom/umeng/facebook/media/FacebookShareContent;->getShare_Type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 389
    new-instance p1, Lcom/umeng/socialize/handler/UMFacebookHandler$8;

    invoke-direct {p1, p0, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler$8;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 359
    new-instance v0, Lcom/umeng/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/umeng/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 361
    :cond_0
    new-instance v0, Lcom/umeng/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/umeng/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler;->mCallbackManager:Lcom/umeng/facebook/CallbackManager;

    new-instance v2, Lcom/umeng/socialize/handler/UMFacebookHandler$7;

    invoke-direct {v2, p0, p2}, Lcom/umeng/socialize/handler/UMFacebookHandler$7;-><init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V

    .line 381
    invoke-virtual {p1}, Lcom/umeng/facebook/media/FacebookShareContent;->getContent()Lcom/umeng/facebook/share/model/ShareContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
